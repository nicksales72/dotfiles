#!/bin/bash

BRIGHTNESS_FILE="/tmp/last-brightness"

if [ "$1" = "dim" ]; then
    brightnessctl -m | cut -d, -f4 | tr -d '%' > "$BRIGHTNESS_FILE"
    brightnessctl set 10%
elif [ "$1" = "restore" ]; then
    if [ -f "$BRIGHTNESS_FILE" ]; then
        brightnessctl set "$(cat "$BRIGHTNESS_FILE")"% && rm "$BRIGHTNESS_FILE"
    fi
fi
