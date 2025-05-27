import gradio as gr
from news import NewsComponent
from talk import AIChat
import logging

# 設置日誌格式
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%H:%M:%S'
)

class NewsAIApp:
    def __init__(self):
        logging.info("啟動新聞閱讀與AI討論系統 (Gradio版)")
        
        # 初始化模組
        self.news_component = NewsComponent()
        self.chat_component = AIChat()
        
    def create_interface(self):
        with gr.Blocks(title="新聞閱讀與AI討論系統") as demo:
            gr.Markdown("# 新聞閱讀與AI討論系統")
            
            with gr.Tabs() as tabs:
                with gr.TabItem("新聞閱讀"):
                    news_ui = self.news_component.create_news_ui()
                
                with gr.TabItem("AI新聞討論"):
                    chat_ui = self.chat_component.create_chat_ui(self.news_component)
            
            
            # 切換頁籤時的處理
            tabs.change(
                fn=self.update_status,
                inputs=[tabs]
            )
        
        return demo
    
    def update_status(self, tab_index):
        if tab_index == 1: # AI討論頁面
            if not hasattr(self.news_component, 'news_data') or not self.news_component.news_data:
                return "*提示: 請先在「新聞閱讀」標籤頁載入新聞，再進行AI討論*"
            else:
                return f"*已載入 {len(self.news_component.news_data)} 篇新聞，可開始AI討論*"
        else:
            return "*新聞閱讀模式*"

def main():
    logging.info("程式啟動")
    app = NewsAIApp()
    demo = app.create_interface()
    demo.launch(debug=True)
    logging.info("程式結束")

if __name__ == "__main__":
    main()