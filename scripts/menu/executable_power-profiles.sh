#!/usr/bin/env bash

SELECTION="$(printf "󰓅 Performance\n󰗑 Balanced\n󰌪 Power saver\n" | rofi -dmenu -theme-str "window { height: 179px; } ")"

case $SELECTION in
	*"Performance")
		powerprofilesctl set performance;;
	*"Balanced")
		powerprofilesctl set balanced;;
	*"Power saver")
		powerprofilesctl set power-saver;;
esac

