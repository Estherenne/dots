#!/usr/bin/env bash

SELECTION="$(printf "󰀁 Record region\n󰖲 Record window\n󰍹 Record output\n󰙦 Stop recording" | rofi -dmenu -theme-str "window { height: 219px; }")"
case $SELECTION in
	*"Record region")
		~/scripts/record.sh region;;
	*"Record window")
		~/scripts/record.sh window;;
	*"Record output")
		~/scripts/record.sh output;;
  *"Stop recording")
    pkill wl-screenrec;;
esac
