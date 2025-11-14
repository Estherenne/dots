#!/usr/bin/env bash

KEY="$HOME/.keys/primary.txt"
declare -a SECRETS=()

for file in /home/ester/secrets/secrets/*
do
  SECRETS+=($file)
done

if [[ $3 == "-c" || $3 == "--copy" ]]
then
  export COPY="1"
fi

unlock() {
  if [[ -d "/tmp/secrets/" ]]
  then
    echo "Secrets are already unlocked (path /tmp/secrets exists)"
    return 1
  else
    mkdir "/tmp/secrets/" \
    && for file in "${SECRETS[@]}"
    do
      doas age --decrypt -i "$KEY" -o "/tmp/secrets/$(echo $file | sd '/home/ester/secrets/secrets/' '')" "$file"
    done \
    && notify-send "Decrypted secrets!"
  fi
}

lock() {
  if [[ -d "/tmp/secrets/" ]]
  then
    rm -rf "/tmp/secrets" \
    && notify-send "Encrypted secrets!"
  else
    echo "Secrets are already locked (path /tmp/secrets does not exist)"
  fi
}

show() {
  if [[ -d "/tmp/secrets" ]]
  then
    if [[ $COPY == "1" ]]
    then
      if [[ -f "/tmp/secrets/$1" ]]
      then
        wl-copy $(cat "/tmp/secrets/$1")
        notify-send "Copied \"$1\" to clipboard"
      else
        echo "Entry does not exist"
      fi
    else
      if [[ -f "/tmp/secrets/$1" ]]
      then
        cat "/tmp/secrets/$1"
      else
        echo "Entry does not exist"
      fi
    fi
  else
    echo "Secrets are locked"
  fi 
}

status() {
  if [[ -d /tmp/secrets ]]
  then
    echo "unlocked"
  else
    echo "locked"
  fi
}

if [[ $1 == "unlock" ]]
then 
  unlock
elif [[ $1 == "lock" ]]
then 
  lock
elif [[ $1 == "show" ]]
then
  show "${@:2}"
elif [[ $1 == "status" ]]
then
  status 
else
  echo "usage: pw [ unlock | lock | show | status ] [ --copy ]" 
fi 
