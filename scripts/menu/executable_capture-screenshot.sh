#!/usr/bin/env bash

SELECTION="$(printf "󰀁 Screenshot region\n󰖲 Screenshot window\n󰍹 Screenshot output" | rofi -dmenu )"
# --width 375 --xoffset 763 --yoffset 300 --height 225
case $SELECTION in
	*"Screenshot region")
		~/scripts/screenshot.sh region;;
	*"Screenshot window")
		~/scripts/screenshot.sh window;;
	*"Screenshot output")
		~/scripts/screenshot.sh output;;
esac

