from news import News
from talk import NewsAIChat
import tkinter as tk
from tkinter import ttk
import logging

# 設置日誌格式
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%H:%M:%S'
)

class NewsAIApp:
    def __init__(self, root):
        self.root = root
        self.root.title("新聞閱讀與AI討論系統")
        
        # 設定視窗大小
        self.root.geometry("1000x700")
        logging.info("啟動新聞閱讀與AI討論系統")
        
        # 創建主分頁控制
        self.notebook = ttk.Notebook(root)
        self.notebook.pack(expand=True, fill="both", padx=5, pady=5)
        
        # 新聞頁面
        self.news_tab = ttk.Frame(self.notebook)
        self.notebook.add(self.news_tab, text="新聞閱讀")
        
        # AI聊天頁面
        self.chat_tab = ttk.Frame(self.notebook)
        self.notebook.add(self.chat_tab, text="AI新聞討論")
        
        # 初始化新聞功能
        logging.info("初始化新聞閱讀模組")
        self.news_instance = News(self.news_tab)
        
        # 初始化AI聊天功能
        logging.info("初始化AI聊天模組")
        self.chat_instance = NewsAIChat(self.chat_tab, self.news_instance)
        
        # 頁面切換事件綁定
        self.notebook.bind("<<NotebookTabChanged>>", self.on_tab_change)
        
        # 狀態欄
        self.status_bar = ttk.Label(root, text="準備就緒", relief=tk.SUNKEN, anchor=tk.W)
        self.status_bar.pack(side=tk.BOTTOM, fill=tk.X)
        logging.info("應用程式初始化完成，等待使用者操作")

    def on_tab_change(self, event):
        """處理標籤頁切換事件"""
        selected_tab = self.notebook.index(self.notebook.select())
        
        # 如果切換到AI討論頁面，檢查是否已載入新聞
        if selected_tab == 1:  # AI討論頁面索引
            if not hasattr(self.news_instance, 'news') or not self.news_instance.news:
                self.status_bar.config(text="提示: 請先在「新聞閱讀」標籤頁載入新聞，再進行AI討論")
            else:
                self.status_bar.config(text=f"已載入 {len(self.news_instance.news)} 篇新聞，可開始AI討論")
        else:
            self.status_bar.config(text="新聞閱讀模式")

def main():
    logging.info("程式啟動")
    root = tk.Tk()
    app = NewsAIApp(root)
    logging.info("進入主事件循環")
    root.mainloop()
    logging.info("程式結束")

if __name__ == "__main__":
    main()