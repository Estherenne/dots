#!/usr/bin/env bash

SELECTION="$(printf "󰓅 Performance\n󰗑 Balanced\n󰌪 Power saver\n" | rofi -dmenu)"

case $SELECTION in
	*"Performance")
		tuned-adm profile throughput-performance;;
	*"Balanced")
		tuned-adm profile balanced;;
	*"Power saver")
		tuned-adm profile powersave;;
esac

