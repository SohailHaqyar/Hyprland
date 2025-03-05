#!/bin/bash
STATE=$(hyprctl -j getoption decoration:blur:enabled | jq ".int")

if [ "${STATE}" == "0" ]; then
	hyprctl keyword decoration:blur:enabled 1
 	notify-send -e -u low  "Blur Enabled"
else
  hyprctl keyword decoration:blur:enabled 0
  notify-send -e -u low  "Blur Disabled"
fi
