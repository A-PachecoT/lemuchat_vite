from fastapi import APIRouter, Depends
from app.services.chatbot import ChatbotService

router = APIRouter()


@router.post("/chat")
async def chat(message: str, chatbot: ChatbotService = Depends(ChatbotService)):
    response = chatbot.get_response(message)
    return {"response": response}
