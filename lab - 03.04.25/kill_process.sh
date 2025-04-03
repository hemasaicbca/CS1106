#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi

PROCESS_NAME=$1

echo "Terminating process: $PROCESS_NAME..."
pkill -9 "$PROCESS_NAME"

if pgrep "$PROCESS_NAME" > /dev/null; then
    echo "Error: Process '$PROCESS_NAME' is still running."
    exit 1
else
    echo "Process '$PROCESS_NAME' terminated successfully."
fi

