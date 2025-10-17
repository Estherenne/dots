#!/usr/bin/env bash

SELECTION="$(printf "󰌾 Lock\n󰒲 Suspend\n󰠜 Log out\n󰜉 Reboot\n󰐥 Shutdown" | rofi -dmenu -theme-str "window { height: 259px; }")"

case $SELECTION in
	*"Lock")
		gtklock;;
	*"Suspend")
		systemctl suspend;;
	*"Log out")
		swaymsg quit;;
	*"Reboot")
		reboot;;
	*"Shutdown")
		poweroff;;
esac

