#!/bin/bash

REMOTE_NAME="dg_notes"
REMOTE_FOLDER="dg_obsidian"
LOCAL_FOLDER="/home/dakshgautam/Documents/dg_notes/dg_obsidian"
LOG_FILE="/home/dakshgautam/logs/rclone-sync.log"
SYNC_TYPE="sync"  # or "bisync"
INTERVAL=7200  # seconds (10 minutes)

# === LOOP ===
while true; do
  echo "[$(date)] Starting sync..." >> "$LOG_FILE"

  rclone sync "${REMOTE_NAME}:${REMOTE_FOLDER}" "$LOCAL_FOLDER" --log-file="$LOG_FILE"

  if [ $? -eq 0 ]; then
    echo "[$(date)] ✅ Sync successful." >> "$LOG_FILE"
  else
    echo "[$(date)] ❌ Sync failed." >> "$LOG_FILE"
  fi

  echo "[$(date)] Sleeping for $(($INTERVAL / 60)) minutes..." >> "$LOG_FILE"
  sleep $INTERVAL
done