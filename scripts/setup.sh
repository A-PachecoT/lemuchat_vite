#!/bin/bash

# Check if running on Ubuntu
if [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    if [ "$DISTRIB_ID" = "Ubuntu" ]; then
        echo "Ubuntu detected. Installing required packages..."
        sudo apt-get update
        sudo apt-get install -y python3 python3-pip nodejs npm
    fi
fi

# Navigate to the backend directory
cd ../backend

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install backend dependencies
pip install -r requirements.txt

# Navigate to the frontend directory
cd ../frontend

# Install frontend dependencies
npm install

echo "Setup complete. You can now run the deploy script to start the servers."