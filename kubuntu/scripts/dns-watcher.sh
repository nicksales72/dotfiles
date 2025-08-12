#!/bin/bash

PIHOLE_DNS="1.1.1.1"
IFACE="wlp3s0"
TARGET_SSID="network"

while true; do
    SSID=$(iw dev wlp3s0 link | sed -n 's/^\s*SSID: //p')
    if [ "$SSID" = "$TARGET_SSID" ]; then
        resolvectl dns "$IFACE" "$PIHOLE_DNS"
        resolvectl domain "$IFACE" "~."
    else
        resolvectl revert "$IFACE"
    fi
    sleep 15
done

