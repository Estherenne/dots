#!/usr/bin/env bash

WALLPAPER=$1

cp $WALLPAPER /tmp/wallpaper.png
ffmpeg -y -i $1 /tmp/wallpaper.png
matugen image $WALLPAPER $2
