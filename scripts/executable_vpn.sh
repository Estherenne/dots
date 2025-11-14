#!/usr/bin/env bash

if [[ $1 == "check-waybar" ]]; then
  if [[ $(cat ~/.vpn-state) == "up" ]]; then
    echo "󰌆"
  else
    echo ""
  fi
else
  if [[ $(cat ~/.vpn-state) == "up" ]]; then
    kitty -e doas wg-quick down wgcf-profile \
    && echo "down" > ~/.vpn-state
    notify-send "Disconnected from VPN" "Public IP: $(curl https://ipinfo.io/ip)"
  elif [[ $(cat ~/.vpn-state) == "down" ]]; then
    kitty -e doas wg-quick up wgcf-profile \
    && echo "up" > ~/.vpn-state
    notify-send "Connected to VPN" "Public IP: $(curl https://ipinfo.io/ip)"
  fi
fi
