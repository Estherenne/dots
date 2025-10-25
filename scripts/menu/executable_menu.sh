#!/usr/bin/env bash

SELECTION="$(printf "󰀻 Apps\n󰄀 Capture\n󰝚 Play music\n󰋩 Set wallpaper\n󰌆 Toggle VPN\n󰓅 Power mode\n󰐥 Power" | rofi -dmenu -theme-str "window { height: 400px; }")"

case $SELECTION in
  *"Apps")
    vicinae toggle;;
  *"Capture")
    ~/scripts/menu/capture.sh;;
  *"Play music")
    mpv --shuffle ~/Music;;
  *"Set wallpaper")
    ~/scripts/wallpaper.sh $(/usr/bin/env ls ~/Pictures/wallpapers | rofi -dmenu);;
  *"Toggle VPN")
    ~/scripts/vpn.sh;;
	*"Power mode")
		~/scripts/menu/power-profiles.sh;;
	*"Power")
		~/scripts/menu/power-menu.sh;;
esac

