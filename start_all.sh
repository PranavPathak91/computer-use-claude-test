#!/bin/bash

# Kill any existing processes
pkill Xvfb
pkill tint2

# Start Xvfb (Virtual Frame Buffer)
Xvfb :99 -screen 0 1024x768x24 &
export DISPLAY=:99

# Wait for Xvfb to start
sleep 2

# Start window manager
tint2 &

# Wait for window manager to start
sleep 2

# Keep the script running to maintain the virtual display
tail -f /dev/null
