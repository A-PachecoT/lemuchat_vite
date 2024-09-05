from langchain.llms import OpenAI
from langchain.chains import ConversationChain
from app.core.config import settings


class ChatbotService:
    def __init__(self):
        self.llm = OpenAI(temperature=0.7, openai_api_key=settings.OPENAI_API_KEY)
        self.conversation = ConversationChain(llm=self.llm, verbose=True)

    def get_response(self, message: str) -> str:
        response = self.conversation.predict(input=message)
        return response
