import gradio as gr
import requests
from bs4 import BeautifulSoup
import logging

# 設置日誌格式
if not logging.getLogger().hasHandlers():
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s [%(levelname)s] %(message)s',
        datefmt='%H:%M:%S'
    )

class NewsComponent:
    def __init__(self):
        # 初始化新聞數據
        self.news_data = []
        logging.info("新聞閱讀模組已初始化 (Gradio版)")
    
    def create_news_ui(self):
        with gr.Row():
            load_news_btn = gr.Button("載入最新新聞")
            status_text = gr.Textbox(label="狀態", interactive=False)
        
        with gr.Row():
            news_dropdown = gr.Dropdown(
                label="請選取新聞標題", 
                choices=[], 
                interactive=True
            )
        
        with gr.Row():
            content_text = gr.Textbox(
                label="新聞內容", 
                interactive=False, 
                lines=20
            )
        
        # 處理載入新聞
        load_news_btn.click(
            fn=self.fetch_news,
            outputs=[news_dropdown, status_text]
        )
        
        # 處理顯示新聞內容
        news_dropdown.change(
            fn=self.show_content,
            inputs=[news_dropdown],
            outputs=[content_text]
        )
        
        return [load_news_btn, news_dropdown, content_text, status_text]
    
    def fetch_news(self):
        """從Yahoo新聞擷取新聞資料"""
        url = "https://tw.news.yahoo.com/archive/"
        self.news_data = []

        logging.info(f"正在從 {url} 獲取新聞列表")
        
        try:
            response = requests.get(url)
            
            if response.status_code != 200:
                logging.error(f"無法獲取新聞。狀態碼：{response.status_code}")
                return gr.update(choices=[]), f"無法獲取新聞。狀態碼：{response.status_code}"

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
                        self.news_data.append({'title': title, 'content': content})
                        logging.info(f"已獲取: {title[:30]}...")

            logging.info(f"新聞獲取完成，共 {len(self.news_data)} 篇")
            
            # 更新下拉式選單 - 使用 gr.update() 而不是 gr.Dropdown.update()
            titles = [item['title'] for item in self.news_data]
            return gr.update(choices=titles, value=None), f"新聞載入完成，共 {len(self.news_data)} 篇"
            
        except Exception as e:
            error_msg = f"發生錯誤：{str(e)}"
            logging.error(error_msg)
            return gr.update(choices=[]), error_msg
    
    def show_content(self, title):
        """根據選定的標題顯示新聞內容"""
        if not title:
            return ""
        
        for item in self.news_data:
            if item['title'] == title:
                return f"{item['title']}\n\n{item['content']}"
        
        return "無法找到選定的新聞內容"
