#!/bin/bash

# Checking if Bluetooth is already enabled or not
if systemctl is-active --quiet bluetooth; then
    # Bluetooth is enabled
    # turning it off
    systemctl stop bluetooth
    echo "success off"
else
    # Bluetooth is disabled
    # turning it on
    systemctl start bluetooth
fi

