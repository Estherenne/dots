#!/usr/bin/env bash

SELECTION="$(printf "󰍹 Capture\n󰓅 Power mode\n󰐥 Power" | rofi -dmenu)"

case $SELECTION in
  *"Capture")
    ~/scripts/menu/capture.sh;;
	*"Power mode")
		~/scripts/menu/power-profiles.sh;;
	*"Power")
		~/scripts/menu/power-menu.sh;;
esac

