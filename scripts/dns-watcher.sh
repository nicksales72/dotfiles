#!/bin/bash

PIHOLE_DNS="1.1.1.1"
IFACE="wlan0"
TARGET_SSID="HomeNetwork"

while true; do
    SSID=$(iwgetid -r)
    if [ "$SSID" = "$TARGET_SSID" ]; then
        resolvectl dns "$IFACE" "$PIHOLE_DNS"
        resolvectl domain "$IFACE" "~."
    else
        resolvectl revert "$IFACE"
    fi
    sleep 15
done
