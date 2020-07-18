#!/bin/sh
# Check for Wi-Fi name
AIRPORT=$(networksetup -listallhardwareports | grep -A1  "Wi-Fi" | grep "Device" | cut -c 8-12)

# Set up Wifi connection
networksetup -setairportnetwork $AIRPORT SSID password
