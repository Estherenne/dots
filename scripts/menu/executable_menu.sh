#!/usr/bin/env bash

SELECTION="$(printf "󰍹 Capture\n󰓅 Power mode\n󰐥 Power" | wofi --show=dmenu --width 260 --prompt "Menu" --xoffset 836 --yoffset 300 --height 340)"

case $SELECTION in
  *"Capture")
    ~/scripts/fuzzel/capture.sh;;
	*"Power mode")
		~/scripts/fuzzel/power-profiles.sh;;
	*"Power")
		~/scripts/fuzzel/power-menu.sh;;
esac

