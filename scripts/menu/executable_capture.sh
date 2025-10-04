#!/usr/bin/env bash

SELECTION="$(printf "󰄀 Screenshot\n󰕧 Record\n" | rofi -dmenu) "

case $SELECTION in
	*"Screenshot")
		~/scripts/menu/capture-screenshot.sh;;
	*"Record")
		~/scripts/menu/capture-record.sh;;
esac

