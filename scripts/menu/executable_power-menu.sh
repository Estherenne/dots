#!/usr/bin/env bash

SELECTION="$(printf "󰌾 Lock\n󰒲 Suspend\n󰠜 Log out\n󰜉 Reboot\n󰐥 Shutdown" | wofi --show=dmenu --width 240 --prompt "Power" --xoffset 836 --yoffset 300 --height 340)"

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

