#!/usr/bin/env bash

WALLPAPER=~/Pictures/wallpapers/$1

matugen image $WALLPAPER $2 $3
ffmpeg -y -i ~/Pictures/wallpapers/$1 /tmp/wallpaper.png
