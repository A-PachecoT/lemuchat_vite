#!/bin/bash

# Navigate to the backend directory
cd ../backend

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate

# Install backend dependencies
pip install -r requirements.txt

# Run the backend server in the background
uvicorn app.main:app --reload &

# Navigate to the frontend directory
cd ../frontend

# Install frontend dependencies
npm install

# Run the frontend server in the background
npm run dev &

# Wait for a few seconds to ensure the servers are up and running
sleep 5

# Open the frontend in the default web browser
xdg-open http://localhost:5173 || open http://localhost:5173 || start http://localhost:5173