#!/bin/bash

REMOTE_NAME="dg_notes"
REMOTE_FOLDER="dg_obsidian"
LOCAL_FOLDER="/home/dakshgautam/Documents/dg_notes/dg_obsidian"
INTERVAL=7200  # seconds (2 hours)

while true; do
  echo "[$(date)] 🔄 Starting sync..."

  rclone sync "${REMOTE_NAME}:${REMOTE_FOLDER}" "$LOCAL_FOLDER"

  if [ $? -eq 0 ]; then
    echo "[$(date)] ✅ Sync successful."
  else
    echo "[$(date)] ❌ Sync failed."
  fi

  echo "[$(date)] 💤 Sleeping for $(($INTERVAL / 60)) minutes..."
  sleep $INTERVAL
done
