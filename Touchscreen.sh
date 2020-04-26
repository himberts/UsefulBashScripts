#! /bin/bash
  if [ "$1" == "-h" ]
  then
    echo " "
    echo -e "\033[34mCreatePdf Skript\033[0m"
    echo "This Script allows you to turn off the Touchscreen, Trackpoint and Touchpad"
    echo "when you will only use the Wacom-Pen"
    echo " "
    echo -e "\033[34mUsage:\033[0m"
    echo "Touchscreen"
    echo " "
    echo -e "\033[34mOptions:\033[0m"
    echo "there are no options"
    echo " "
    exit 0
  fi

touchscreen=$(xinput list-props "ELAN Touchscreen" | grep "Device Enabled" | awk -F ":" '{print $2}')
touchpad=$(xinput list-props "SynPS/2 Synaptics TouchPad" | grep "Device Enabled" | awk -F ":" '{print $2}')
trackpoint=$(xinput list-props "TPPS/2 IBM TrackPoint" | grep "Device Enabled" | awk -F ":" '{print $2}')

if [ $touchscreen -eq 1 ]; then
    xinput --set-prop "ELAN Touchscreen" "Device Enabled" 0;
else
    xinput --set-prop "ELAN Touchscreen" "Device Enabled" 1;
fi

if [ $touchpad -eq 1 ]; then
    xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0;
else
    xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1;
fi
if [ $trackpoint -eq 1 ]; then
    xinput --set-prop "TPPS/2 IBM TrackPoint" "Device Enabled" 0;
else
    xinput --set-prop "TPPS/2 IBM TrackPoint" "Device Enabled" 1;
fi
