#!/usr/bin/env bash

SELECTION="$(printf "󰀁 Screenshot region\n󰖲 Screenshot window\n󰍹 Screenshot output" | rofi -dmenu -theme-str "window { height: 179px; }")"
case $SELECTION in
	*"Screenshot region")
		~/scripts/screenshot.sh region;;
	*"Screenshot window")
		~/scripts/screenshot.sh window;;
	*"Screenshot output")
		~/scripts/screenshot.sh output;;
esac

