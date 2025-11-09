#!/bin/bash

cd "$(dirname "$0")"

echo "Checking for updates..."
git fetch
git status


cd "$(dirname "$0")/code"
echo "Current directory: $(pwd)"  

echo "Starting Python script..."
python3 "$(pwd)/masjid_display.py" -r

read -p "Press Enter to exit..."
