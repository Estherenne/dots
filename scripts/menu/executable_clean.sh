#!/usr/bin/env bash

SELECTION="$(printf "󰀁 Clean Nix cache\n󰖲 Optimise Nix store\n󰍹 Clear HELLDIVERS 2 shader cache" | rofi -dmenu -theme-str "window { height: 175px; }")"
case $SELECTION in
	*"Clean Nix cache")
		~/scripts/screenshot.sh region;;
	*"Optimise Nix store")
		~/scripts/screenshot.sh window;;
	*"Clear HELLDIVERS 2 shader cache")
		~/scripts/screenshot.sh output;;
esac

