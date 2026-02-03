#!/usr/bin/env bash

# Get list of available sinks
sinks=$(pactl list short sinks | awk '{print $2}')

# Use rofi or dmenu to select sink
if command -v rofi &> /dev/null; then
    selected=$(echo "$sinks" | rofi -dmenu -i -p "Select Audio Output")
else
    selected=$(echo "$sinks" | dmenu -i -p "Select Audio Output:")
fi

# Exit if no selection made
[[ -z "$selected" ]] && exit

# Set the selected sink as default
pactl set-default-sink "$selected"

# Move all currently playing streams to the new sink
pactl list short sink-inputs | awk '{print $1}' | while read stream; do
    pactl move-sink-input "$stream" "$selected"
done

# Send notification
notify-send "Audio Output" "Switched to: $selected"

