#!/bin/bash

#-- Define the threshold in bytes (10 GB = 10 * 1024 * 1024 * 1024 bytes):
THRESHOLD_BYTES=$((10 * 1024 * 1024 * 1024))

#-- Get available disk space in bytes:
AVAILABLE_BYTES=$(df . | awk 'NR==2 {print $4}')

#-- Check if available space is below the threshold:
if [ $AVAILABLE_BYTES -lt $THRESHOLD_BYTES ]; then
    # Send a macOS Notification:
    osascript -e 'display notification "Low disk space alert! Free space is below 10 GB." with title "Disk Space Alert"'
fi
