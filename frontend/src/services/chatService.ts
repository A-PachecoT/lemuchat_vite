import axios from 'axios';

const API_URL = 'http://localhost:8000';  // Adjust if your backend uses a different port

export const sendMessage = async (message: string): Promise<string> => {
  try {
    const response = await axios.post(`${API_URL}/chat`, { message });
    return response.data.response;
  } catch (error) {
    console.error('Error sending message:', error);
    throw error;
  }
};