#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="/home/dave/Pictures/wallpapers"

# List files in the directory and pass to dmenu
SELECTED=$(ls "$WALLPAPER_DIR" | dmenu -i -p "Select a wallpaper:")

# If a file is selected, set it as wallpaper
if [ -n "$SELECTED" ]; then
	#mpvpaper eDP-1 -o "loop" "$WALLPAPER_DIR/$SELECTED"  &
	swww img "$WALLPAPER_DIR/$SELECTED" --outputs eDP-1 --transition-step 50 --transition-fps 255
fi
