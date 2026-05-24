#!/bin/bash

while true; do
    echo "Starting Minecraft NeoForge Server..."
    echo "Press Ctrl+C to stop the server and exit the auto-restart loop."
    echo "---------------------------------------------"

    # Call the official neoforge run script
    ./run.sh

    echo "Server stopped or crashed! Restarting in 10 seconds..."
    sleep 10
done