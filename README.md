# Lemuchat! 🦝💬

This project is a web-based AI chat application using FastAPI and LangChain for the backend, and React with TypeScript for the frontend. It features a futuristic neon design with a cold metal blue color palette.

## Project Structure

```
project/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── backend/
├── frontend/
└── scripts/
```

**Scripts**

```
📦scripts
 ┣ 📜deploy.sh
 ┗ 📜setup.sh
```

**Backend**

```
📦backend
 ┣ 📂app
 ┃ ┣ 📂api
 ┃ ┃ ┣ 📜chat.py
 ┃ ┃ ┗ 📜__init__.py
 ┃ ┣ 📂core
 ┃ ┃ ┣ 📜config.py
 ┃ ┃ ┗ 📜__init__.py
 ┃ ┣ 📂services
 ┃ ┃ ┣ 📜chatbot.py
 ┃ ┃ ┗ 📜__init__.py
 ┃ ┣ 📜main.py
 ┃ ┗ 📜__init__.py
 ┣ 📜.env
 ┗ 📜requirements.txt
```

**Frontend**

```
📦frontend
 ┣ 📂node_modules
 ┣ 📂public
 ┃ ┗ 📜vite.svg
 ┣ 📂src
 ┃ ┣ 📂assets
 ┃ ┃ ┗ 📜react.svg
 ┃ ┣ 📂components
 ┃ ┃ ┗ 📂Chat
 ┃ ┃ ┃ ┗ 📜Chat.tsx
 ┃ ┣ 📂services
 ┃ ┃ ┗ 📜chatService.ts
 ┃ ┣ 📜App.css
 ┃ ┣ 📜App.tsx
 ┃ ┣ 📜index.css
 ┃ ┣ 📜main.tsx
 ┃ ┗ 📜vite-env.d.ts
 ┣ 📜.gitignore
 ┣ 📜index.html
 ┣ 📜README.md

```

## Backend (FastAPI + LangChain)

The backend is built with FastAPI and uses LangChain to interact with the OpenAI API.

### Setup

1. Navigate to the `backend` directory.
2. Create a virtual environment: `python -m venv venv`
3. Activate the virtual environment:
   - Windows: `venv\Scripts\activate`
   - macOS/Linux: `source venv/bin/activate`
4. Install dependencies: `pip install -r requirements.txt`
5. Create a `.env` file in the `backend` directory and add your OpenAI API key:

```

OPENAI_API_KEY=your_openai_api_key_here

```

### Running the Backend

From the `backend` directory, run:

```

uvicorn main:app --reload

```

## Frontend (React + TypeScript + Vite)

The frontend is built with React, TypeScript, and Vite, featuring a futuristic neon design.

### Setup

1. Navigate to the `frontend` directory.
2. Install dependencies:

```
npm install
```

### Running the Frontend

From the `frontend` directory, run:

```
npm run dev
```

The application will be available at `http://localhost:5173`.

## Usage

1. Start both the backend and frontend servers.
2. Open a web browser and go to `http://localhost:5173`.
3. You should see a futuristic chat interface where you can interact with the AI chatbot.

## API Endpoints

- `POST /chat`: Send a message to the chatbot and receive a response.

## Technologies Used

- Backend:
  - FastAPI
  - LangChain
  - OpenAI API
- Frontend:
  - React
  - TypeScript
  - Vite
  - Tailwind CSS

## Features

- Futuristic neon design with a cold metal blue color palette
- Real-time chat interface
- Animated gradient elements
- Responsive layout

## Future Improvements

- Add user authentication
- Implement conversation history persistence
- Enhance the chat interface with more features (e.g., message timestamps, user avatars)
- Add support for multiple language models
- Implement error handling and input validation
- Add more animations and interactive elements to enhance the futuristic feel

## GitHub Secrets

This project uses GitHub Secrets to securely store the OpenAI API key. To set up:

1. Go to your GitHub repository
2. Navigate to Settings > Secrets and variables > Actions
3. Click on "New repository secret"
4. Name: `OPENAI_API_KEY`
5. Value: Your OpenAI API key

The GitHub Actions workflow will automatically use this secret during deployment.
