#!/bin/bash
echo "[run.sh] Switching to project directory..."
cd /home/jim/lan_messenger || { echo "❌ Failed to cd into project folder"; exit 1; }

echo "[run.sh] Activating virtual environment..."
source ./lanenv/bin/activate || { echo "❌ Failed to activate lanenv"; exit 2; }

echo "[run.sh] Launching WebSocket Messenger..."
python ~/lan_messenger/websocket_messenger.py
