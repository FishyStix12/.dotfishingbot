#!/bin/bash
# Run this after connecting to keyboard via bluetooth
echo "================================================================================="
echo "Important Information:"
echo -e "If this is the Raspberry Pi please utilize the next selection of screens ton\to format the Pi's 4 inch square display!n\Go to 1 Setup Displayn\S060 HyperPixeln\tbd\nIf not hit Ctrl+C"
echo "================================================================================="
read -p "Press Enter to continue..."
kalipi-tft-config
