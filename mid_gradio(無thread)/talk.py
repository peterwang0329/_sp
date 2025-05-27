import gradio as gr
import logging
import time
from groq import Groq

# 設置日誌格式
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%H:%M:%S'
)

class AIChat:
    def __init__(self):
        # 初始化 Groq API
        self.api_key = "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"
        if not self.api_key:
            logging.warning("未找到 GROQ_API_KEY 環境變數，請確保已設置 API 金鑰")
        
        self.client = Groq(api_key=self.api_key)
        self.model = "llama3-70b-8192"  # Groq's LLaMA 3-70B-8192 model
        
        # 記錄初始化完成
        logging.info(f"AI聊天介面已初始化 (Gradio版)，使用模型: {self.model}")

    def create_chat_ui(self, news_component):
        self.news_component = news_component
        
        chatbot = gr.Chatbot(type='messages')
        
        with gr.Row():
            chat_input = gr.Textbox(
                label="輸入您的問題或評論", 
                placeholder="輸入您的問題...", 
                lines=3
            )
            chat_btn = gr.Button("發送")

        with gr.Row():
            gr.Markdown("## 快速提問")
        
        with gr.Row():
            q1 = gr.Button("總結今日新聞重點")
            q2 = gr.Button("分析這些新聞的觀點")
        
        with gr.Row():
            q3 = gr.Button("這些新聞有什麼共同主題?")
            q4 = gr.Button("哪一則新聞最值得關注?")
        
        # 處理發送訊息
        chat_btn.click(
            fn=self.chat_with_ai, 
            inputs=[chat_input, chatbot], 
            outputs=[chatbot]
        ).then(
            fn=lambda: "", 
            outputs=[chat_input]
        )
        
        # 修正快速提問按鈕處理方式
        q1.click(
            fn=self.quick_question_wrapper("總結今日新聞重點"),
            inputs=[chatbot],
            outputs=[chatbot]
        )
        
        q2.click(
            fn=self.quick_question_wrapper("分析這些新聞的觀點"),
            inputs=[chatbot],
            outputs=[chatbot]
        )
        
        q3.click(
            fn=self.quick_question_wrapper("這些新聞有什麼共同主題?"),
            inputs=[chatbot],
            outputs=[chatbot]
        )
        
        q4.click(
            fn=self.quick_question_wrapper("哪一則新聞最值得關注?"),
            inputs=[chatbot],
            outputs=[chatbot]
        )
        
        return [chatbot, chat_input, chat_btn]

    def quick_question_wrapper(self, question):
        """創建一個包裝函數來處理已固定問題的快速提問"""
        def wrapped_function(history):
            return self.chat_with_ai(question, history)
        return wrapped_function
    
    def chat_with_ai(self, message, history):
        """處理用戶發送的訊息"""
        # 檢查是否已載入新聞
        if not hasattr(self.news_component, 'news_data') or not self.news_component.news_data:
            return history + [{"role": "user", "content": message}, 
                              {"role": "assistant", "content": "請先在「新聞閱讀」標籤頁載入新聞，再開始對話"}]
        
        try:
            # 記錄開始處理
            logging.info(f"開始處理用戶問題: {message[:50]}...")
            start_time = time.time()
            
            # 建立新聞內容上下文
            news_context = "以下是今日的五篇熱門新聞:\n\n"
            
            for i, news_item in enumerate(self.news_component.news_data, 1):
                news_context += f"新聞{i}標題: {news_item['title']}\n"
                # 取內容摘要
                content_preview = news_item['content'][:200] + "..." if len(news_item['content']) > 200 else news_item['content']
                news_context += f"內容摘要: {content_preview}\n\n"
            
            # 使用 Groq API 發送請求
            logging.info(f"發送請求到 Groq API (模型: {self.model})")
            
            if not self.api_key:
                return history + [{"role": "user", "content": message}, 
                                 {"role": "assistant", "content": "無法連接到 Groq API。請確保已設置 GROQ_API_KEY 環境變數。"}]
            
            prompt = "你是一個專業的新聞分析助手，可以根據提供的新聞內容回答問題、提供分析和見解。請用台灣人常用的繁體中文回答問題。\n\n" 

            response = self.client.chat.completions.create(
                model=self.model,
                messages=[
                    {"role": "system", "content": prompt},
                    {"role": "user", "content": f"{news_context}\n\n用戶問題: {message}"}
                ],
                temperature=0.7,
                max_tokens=2048
            )
            
            result = response.choices[0].message.content
            elapsed_time = time.time() - start_time
            logging.info(f"收到回應 (耗時: {elapsed_time:.2f}秒)")
            
            return history + [{"role": "user", "content": message}, 
                             {"role": "assistant", "content": result}]
            
        except Exception as e:
            logging.error(f"與 Groq API 通信時發生錯誤: {str(e)}")
            return history + [{"role": "user", "content": message}, 
                             {"role": "assistant", "content": f"發生錯誤: {str(e)}"}]
