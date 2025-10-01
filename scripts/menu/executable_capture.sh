#!/usr/bin/env bash

SELECTION="$(printf "󰄀 Screenshot\n󰕧 Record\n" | wofi --show=dmenu --width 275 --prompt "Capture" --xoffset 813 --yoffset 300 --height 225)"

case $SELECTION in
	*"Screenshot")
		~/scripts/fuzzel/capture-screenshot.sh;;
	*"Record")
		~/scripts/fuzzel/capture-record.sh;;
esac

