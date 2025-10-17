#!/usr/bin/env bash

SELECTION="$(printf "󰀻 Apps\n󰄀 Capture\n󰝚 Play music\n󰓅 Power mode\n󰐥 Power" | rofi -dmenu -theme-str "window { height: 400px; }")"

case $SELECTION in
  *"Apps")
    vicinae toggle;;
  *"Capture")
    ~/scripts/menu/capture.sh;;
  *"Play music")
    mpv --shuffle ~/Music;;
	*"Power mode")
		~/scripts/menu/power-profiles.sh;;
	*"Power")
		~/scripts/menu/power-menu.sh;;
esac

