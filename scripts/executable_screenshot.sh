#!/usr/bin/env bash

if [[ $1 == 'region' ]]; then
  slurp -c a1ced8 -b 1015109c | grim -g - /tmp/screenshot.png \
    && wl-copy -t image/png < /tmp/screenshot.png \
    && mv /tmp/screenshot.png \
    $(xdg-user-dir PICTURES)/Screenshots/$(date +'screenshot_%Y-%m-%d-%H:%M:%S.png')
elif [[ $1 == 'window' ]]; then
  swaymsg -t get_tree |
    jq -r '.. | (.nodes? // empty)[] | select(.pid and .visible) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' |
    slurp -c a1ced8 -b 1015109c | grim -g - /tmp/screenshot.png \
    && wl-copy -t image/png < /tmp/screenshot.png \
    && mv /tmp/screenshot.png \
    $(xdg-user-dir PICTURES)/Screenshots/$(date +'screenshot_%Y-%m-%d-%H:%M:%S.png')
elif [[ $1 == 'output' ]]; then
  swaymsg -t get_outputs |
    jq -r '.[] | select(.active) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' |
    slurp -c a1ced8 -b 1015109c | grim -g - /tmp/screenshot.png \
    && wl-copy -t image/png < /tmp/screenshot.png \
    && mv /tmp/screenshot.png \
    $(xdg-user-dir PICTURES)/Screenshots/$(date +'screenshot_%Y-%m-%d-%H:%M:%S.png')
fi
