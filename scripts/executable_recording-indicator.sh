#!/usr/bin/env bash

FILE=~/.recording-indicator

if [[ $1 == 'check' ]]; then
  if [[ -f $FILE ]]; then
    echo "󰻃"
  fi
elif [[ $1 == 'switch' ]]; then
  if [[ -f $FILE ]]; then
    rm ~/.recording-indicator
  else
    touch ~/.recording-indicator
  fi
fi
