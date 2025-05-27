import tkinter as tk
from tkinter import ttk, messagebox
import requests
from bs4 import BeautifulSoup
import threading
import logging

# 如果news.py是獨立導入的，確保日誌格式一致
if not logging.getLogger().hasHandlers():
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s [%(levelname)s] %(message)s',
        datefmt='%H:%M:%S'
    )

class News:
    def __init__(self, root):
        self.root = root
        
        # 創建框架
        self.news_frame = ttk.Frame(root)
        self.news_frame.pack(expand=True, fill='both')
        
        # 初始化新聞功能
        self.init_news_tab()
        
        logging.info("新聞閱讀模組已初始化")

    def init_news_tab(self):
        # 創建下拉式選單
        self.news_combobox = ttk.Combobox(self.news_frame, width=50, state="readonly")
        self.news_combobox.set("請選取新聞標題")
        self.news_combobox.pack(pady=10)
        
        # 創建文字框顯示新聞內容
        self.content_text = tk.Text(self.news_frame, height=30, width=100)
        self.content_text.pack(pady=10)
        
        # 新增載入新聞按鈕
        self.load_news_button = tk.Button(self.news_frame, text="載入最新新聞", command=self.start_news_thread)
        self.load_news_button.pack(pady=5)
        
        # 綁定事件
        self.news_combobox.bind("<<ComboboxSelected>>", self.show_content)
        
        # 加入載入狀態標籤
        self.status_label = ttk.Label(self.news_frame, text="")
        self.status_label.pack(pady=5)
    
    def start_news_thread(self):
        # 禁用按鈕避免重複點擊
        self.load_news_button.config(state=tk.DISABLED)
        self.status_label.config(text="正在載入新聞，請稍候...")
        
        logging.info("開始載入新聞...")
        # 啟動背景執行緒
        threading.Thread(target=self.fetch_and_display_news, daemon=True).start()
    
    def fetch_and_display_news(self):
        # 發送請求並擷取新聞標題與內容
        url = "https://tw.news.yahoo.com/archive/"
        news_data = []

        try:
            logging.info(f"正在從 {url} 獲取新聞列表")
            response = requests.get(url)
            if response.status_code == 200:
                soup = BeautifulSoup(response.text, 'html.parser')
                
                # 找到所有符合條件的區塊
                links = soup.find_all('div', class_='Ov(h) Pend(44px) Pstart(25px)')
                logging.info(f"找到 {len(links)} 條新聞連結")

                # 初始化字典
                link_dict = {}

                # 提取每個連結的 href
                for index, link_div in enumerate(links):
                    a_tag = link_div.find('a')
                    if a_tag and 'href' in a_tag.attrs:
                        link_dict[f'{index}'] = a_tag['href']

                base_url = "https://tw.news.yahoo.com"
                full_links = [base_url + link_dict[key] for key in sorted(link_dict.keys())[:5]]
                logging.info(f"準備獲取前 5 篇新聞內容")

                for i, link in enumerate(full_links, 1):
                    logging.info(f"正在獲取第 {i} 篇新聞: {link}")
                    response = requests.get(link)
                    if response.status_code == 200:
                        soup = BeautifulSoup(response.text, 'html.parser')
                        title_tag = soup.find('div', class_="caas-title-wrapper")
                        content_tag = soup.find('div', class_="caas-body")
                        
                        if title_tag and content_tag:
                            title = title_tag.get_text(strip=True)
                            content = content_tag.get_text(strip=True)
                            news_data.append({'title': title, 'content': content})
                            logging.info(f"已獲取: {title[:30]}...")
                
                # 使用 after 方法安全地更新 UI
                logging.info(f"新聞獲取完成，共 {len(news_data)} 篇")
                self.root.after(0, lambda: self.update_ui_with_news(news_data))
            else:
                error_msg = f"無法獲取新聞。狀態碼：{response.status_code}"
                logging.error(error_msg)
                self.root.after(0, lambda: self.show_error(error_msg))
        
        except Exception as e:
            error_msg = f"發生錯誤：{str(e)}"
            logging.error(error_msg)
            self.root.after(0, lambda: self.show_error(error_msg))
    
    def update_ui_with_news(self, news_data):
        # 更新 UI 元素
        self.news = news_data
        
        # 更新下拉式選單
        titles = [item['title'] for item in self.news]
        self.news_combobox['values'] = titles
        self.news_combobox.set("請選取新聞標題")
        
        # 清空內容
        self.content_text.delete(1.0, tk.END)
        
        # 恢復按鈕狀態
        self.load_news_button.config(state=tk.NORMAL)
        self.status_label.config(text=f"新聞載入完成，共 {len(news_data)} 篇")
        logging.info(f"UI已更新，新聞載入完成")

    def show_error(self, message):
        messagebox.showerror("錯誤", message)
        self.load_news_button.config(state=tk.NORMAL)
        self.status_label.config(text="載入失敗")
    
    def show_content(self, event):
        selected_title = self.news_combobox.get()
        for item in self.news:
            if item['title'] == selected_title:
                content = f"{item['title']}\n\n{item['content']}"
                self.content_text.delete(1.0, tk.END)
                self.content_text.insert(tk.END, content)
