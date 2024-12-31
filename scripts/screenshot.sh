#!/bin/bash

# Get the current timestamp
NOW=$(date +%d-%b-%Y_%H-%M-%S)

# Define the screenshot path
SCREENSHOT_PATH=~/Pictures/Screenshots/keshav_$NOW.png

# Take the screenshot using maim, save it to the Screenshots directory
maim --format png --select > "$SCREENSHOT_PATH"

# Copy the screenshot to the clipboard using xclip
xclip -selection clip -t image/png "$SCREENSHOT_PATH"

# Send a notification to the user
notify-send "Screenshot Taken" "Saved as $SCREENSHOT_PATH" --icon=dialog-information

# Automatically open the screenshot folder in the file manager
xdg-open ~/Pictures/Screenshots/

