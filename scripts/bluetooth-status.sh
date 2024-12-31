#!/bin/bash

if systemctl is-active --quiet bluetooth; then
    echo " Bluetooth: On"
else
    echo " Bluetooth: Off"
fi

