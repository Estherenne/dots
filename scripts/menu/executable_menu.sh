#!/usr/bin/env bash

SELECTION="$(printf "󰀻 Apps\n󰍹 Capture\n󰓅 Power mode\n󰐥 Power" | rofi -dmenu -theme-str "window { height: 400px; }")"

case $SELECTION in
  *"Apps")
    vicinae toggle;;
  *"Capture")
    ~/scripts/menu/capture.sh;;
	*"Power mode")
		~/scripts/menu/power-profiles.sh;;
	*"Power")
		~/scripts/menu/power-menu.sh;;
esac

