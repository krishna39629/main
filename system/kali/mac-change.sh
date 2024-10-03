#!/bin/bash

# Set the new MAC address
NEW_MAC="00:11:22:33:44:55"

# Set the interface (e.g., eth0, wlan0)
INTERFACE="eth0"

# Stop the interface
sudo ip link set $INTERFACE down

# Change the MAC address
sudo macchanger -m $NEW_MAC $INTERFACE

# Start the interface
sudo ip link set $INTERFACE up

# Verify the new MAC address
ip link show $INTERFACE