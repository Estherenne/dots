#!/usr/bin/env bash

# kill already running processes
already_running="$(ps -fC 'grep' -N | grep 'battery.sh' | wc -l)"
if [[ $already_running -gt 1 ]]; then
    pkill -f --older 1 'battery.sh'
fi

path="$( dirname "$(readlink -f "$0")" )"

while [[ 0 -eq 0 ]]; do
    battery_status="$(cat /sys/class/power_supply/BAT1/status)"
    battery_charge="$(cat /sys/class/power_supply/BAT1/capacity)"

    if [[ $battery_status == 'Discharging' && $battery_charge -le 85 ]]; then
        if   [[ $battery_charge -le 10 ]]; then
            notify-send --urgency=critical "Battery is low. Please plug the device into a power supply"
        fi
    else
        sleep 20
    fi
done
