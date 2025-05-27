import tkinter as tk
from tkinter import ttk, scrolledtext, messagebox
import requests
import threading
import logging
import time

# 設置日誌格式
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%H:%M:%S'
)

class NewsAIChat:
    def __init__(self, root, news_instance):
        # 儲存新聞實例的參考，以便存取其新聞數據
        self.news_instance = news_instance
        
        # 建立聊天框架
        self.chat_frame = ttk.LabelFrame(root, text="AI新聞討論")
        self.chat_frame.pack(expand=True, fill='both', padx=10, pady=10)
        
        # 建立聊天界面元件
        self.create_chat_widgets()
        
        # 記錄初始化完成
        logging.info("AI聊天介面已初始化完成")

    def create_chat_widgets(self):
        # 聊天記錄顯示區域
        chat_display_frame = ttk.Frame(self.chat_frame)
        chat_display_frame.pack(fill='both', expand=True, padx=5, pady=5)
        
        # 聊天記錄顯示
        self.chat_display = scrolledtext.ScrolledText(chat_display_frame, wrap=tk.WORD, height=15)
        self.chat_display.pack(fill='both', expand=True)
        self.chat_display.config(state=tk.DISABLED)
        
        # 設置標籤樣式
        self.chat_display.tag_config("user", foreground="blue")
        self.chat_display.tag_config("ai", foreground="green")
        self.chat_display.tag_config("system", foreground="gray")
        
        # 訊息輸入區域
        input_frame = ttk.Frame(self.chat_frame)
        input_frame.pack(fill='x', padx=5, pady=5)
        
        # 輸入提示
        prompt_label = ttk.Label(input_frame, text="輸入您的問題或評論:")
        prompt_label.pack(anchor='w', padx=5)
        
        # 輸入欄位
        self.message_input = tk.Text(input_frame, height=3)
        self.message_input.pack(fill='x', padx=5, pady=5)
        self.message_input.bind("<Control-Return>", lambda event: self.send_message())
        
        # 按鈕區域
        button_frame = ttk.Frame(input_frame)
        button_frame.pack(fill='x')
        
        # 發送按鈕
        self.send_button = ttk.Button(button_frame, text="發送", command=self.send_message)
        self.send_button.pack(side=tk.RIGHT, padx=5)
        
        # 常用提問按鈕
        quick_frame = ttk.LabelFrame(self.chat_frame, text="快速提問")
        quick_frame.pack(fill='x', padx=5, pady=5)
        
        quick_questions = [
            "總結今日新聞重點",
            "分析這些新聞的觀點",
            "這些新聞有什麼共同主題?",
            "哪一則新聞最值得關注?"
        ]
        
        for i, question in enumerate(quick_questions):
            ttk.Button(quick_frame, text=question, 
                      command=lambda q=question: self.quick_question(q)).grid(
                      row=i//2, column=i%2, padx=5, pady=3, sticky="ew")
        
        # 平均分配列寬
        quick_frame.columnconfigure(0, weight=1)
        quick_frame.columnconfigure(1, weight=1)
        
        # 顯示初始訊息
        self.add_to_chat("系統", "歡迎使用AI新聞助手!\n\n請先在上方載入今日新聞，然後您可以在此處與AI討論新聞內容。\n您可以詢問新聞摘要、新聞評論、深入分析等。", "system")

    def send_message(self):
        # 獲取用戶輸入
        message = self.message_input.get("1.0", tk.END).strip()
        if not message:
            return
        
        # 清空輸入欄位
        self.message_input.delete("1.0", tk.END)
        
        # 檢查是否已載入新聞
        if not hasattr(self.news_instance, 'news') or not self.news_instance.news:
            self.add_to_chat("系統", "請先點擊「載入最新新聞」按鈕載入新聞，再開始對話。", "system")
            logging.warning("用戶嘗試在未載入新聞的情況下發送訊息")
            return
        
        # 顯示使用者訊息
        self.add_to_chat("您", message, "user")
        logging.info(f"用戶發送訊息: {message}")
        
        # 禁用發送按鈕
        self.send_button.config(state=tk.DISABLED)
        
        # 啟動背景執行緒處理AI回應
        threading.Thread(target=self.get_ai_response, args=(message,), daemon=True).start()
    
    def get_ai_response(self, question):
        try:
            # 記錄開始處理
            logging.info("開始處理AI回應請求")
            start_time = time.time()
            
            # 建立新聞內容上下文
            news_context = "以下是今日的五篇熱門新聞:\n\n"
            
            for i, news_item in enumerate(self.news_instance.news, 1):
                news_context += f"新聞{i}標題: {news_item['title']}\n"
                # 取內容摘要
                content_preview = news_item['content'][:200] + "..." if len(news_item['content']) > 200 else news_item['content']
                news_context += f"內容摘要: {content_preview}\n\n"
            
            # 組合完整問題
            prompt = f"{news_context}\n使用者問題: {question}\n\n請根據上述新聞內容回答問題，提供分析或見解。"
            
            # 記錄API請求開始
            logging.info(f"發送請求到Ollama API (模型: llama3.2:3b)")
            
            # 發送請求到Ollama API
            response = requests.post(
                'http://localhost:11434/api/chat',
                json={
                    'model': 'llama3.2:3b',
                    'messages': [
                        {
                            'role': 'user',
                            'content': prompt
                        }
                    ],
                    'stream': False
                },
                timeout=30  # 設置30秒超時
            )
            
            if response.status_code == 200:
                # 解析回應
                result = response.json()
                ai_response = result.get('message', {}).get('content', '抱歉，我無法處理您的請求。')
                
                # 計算處理時間
                elapsed_time = time.time() - start_time
                
                # 回應摘要 (僅顯示前50個字符)
                response_preview = ai_response[:50] + "..." if len(ai_response) > 50 else ai_response
                
                # 記錄成功回應
                logging.info(f"AI回應成功 (耗時: {elapsed_time:.2f}秒)")
                logging.info(f"回應摘要: {response_preview}")
                
                # 在UI線程中更新聊天
                self.news_instance.root.after(0, lambda: self.add_to_chat("AI助手", ai_response, "ai"))
            else:
                error_msg = f"API請求失敗: 狀態碼 {response.status_code}"
                logging.error(error_msg)
                self.news_instance.root.after(0, lambda: self.add_to_chat("系統", error_msg, "system"))
        
        except requests.exceptions.ConnectionError:
            error_msg = "連接失敗! 請確認Ollama服務是否已啟動 (http://localhost:11434)"
            logging.error(error_msg)
            self.news_instance.root.after(0, lambda: self.add_to_chat("系統", error_msg, "system"))
        except Exception as e:
            error_msg = f"發生錯誤: {str(e)}"
            logging.error(error_msg)
            self.news_instance.root.after(0, lambda: self.add_to_chat("系統", error_msg, "system"))
        finally:
            # 恢復發送按鈕
            self.news_instance.root.after(0, lambda: self.send_button.config(state=tk.NORMAL))
    
    def quick_question(self, question):
        """處理快速提問按鈕"""
        self.message_input.delete("1.0", tk.END)
        self.message_input.insert("1.0", question)
        self.send_message()
    
    def add_to_chat(self, sender, message, tag):
        """添加訊息到聊天記錄"""
        self.chat_display.config(state=tk.NORMAL)
        self.chat_display.insert(tk.END, f"{sender}:\n", tag)
        self.chat_display.insert(tk.END, f"{message}\n\n")
        self.chat_display.see(tk.END)
        self.chat_display.config(state=tk.DISABLED)
