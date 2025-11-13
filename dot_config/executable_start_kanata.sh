#!/bin/bash

# --- Step 1: Activate Karabiner VirtualHIDDevice ---
echo "Activating Karabiner VirtualHIDDevice..."
sudo /Applications/.Karabiner-VirtualHIDDevice-Manager.app/Contents/MacOS/Karabiner-VirtualHIDDevice-Manager activate

# --- Step 2: Start the daemon if not already running ---
DAEMON_PATH="/Library/Application Support/org.pqrs/Karabiner-DriverKit-VirtualHIDDevice/Applications/Karabiner-VirtualHIDDevice-Daemon.app/Contents/MacOS/Karabiner-VirtualHIDDevice-Daemon"

# Check if daemon is running
if pgrep -f "$DAEMON_PATH" > /dev/null; then
    echo "Karabiner daemon is already running."
else
    echo "Starting Karabiner daemon..."
    sudo nohup "$DAEMON_PATH" > /dev/null 2>&1 &
    sleep 1  # Give it a moment to start
fi

# --- Step 3: Start kanata with config ---
echo "Starting kanata..."
sudo kanata --cfg ~/.config/kanata.kbd

echo "All done!"
