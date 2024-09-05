#!/bin/bash

# Navigate to the backend directory
cd ../backend

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate

# Install backend dependencies
pip install -r requirements.txt

# Navigate to the frontend directory
cd ../frontend

# Install frontend dependencies
npm install

echo "Setup complete. You can now run the deploy script to start the servers."