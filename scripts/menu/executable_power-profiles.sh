#!/usr/bin/env bash

SELECTION="$(printf "󰓅 Performance\n󰗑 Balanced\n󰌪 Power saver\n" | wofi --show=dmenu --width 275 --prompt "Power" --xoffset 813 --yoffset 300 --height 225)"

case $SELECTION in
	*"Performance")
		tuned-adm profile throughput-performance;;
	*"Balanced")
		tuned-adm profile balanced;;
	*"Power saver")
		tuned-adm profile powersave;;
esac

