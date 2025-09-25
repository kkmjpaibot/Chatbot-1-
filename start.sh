#!/bin/bash

# Activate the virtual environment
source venv/bin/activate

# Install dependencies if not already installed
if [ ! -d "venv/lib/python3.10/site-packages/uvicorn" ]; then
    pip install -r requirements.txt
fi

# Run the application
exec uvicorn main:app --host 0.0.0.0 --port $PORT --timeout-keep-alive 120
