#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <fitxer>"
    exit 1
fi

arxiu="$1"

if [ ! -f "$arxiu" ]; then
    touch "$arxiu"
    if [ $? -ne 0 ]; then
        echo "Can't create: $arxiu."
        exit 1
    fi
fi

echo "Introdueix paraules, escriu \":>\" per acabar."

while true; do
    read -p "> " palabra
    if [ "$palabra" = ":>" ]; then
        break
    else
        echo "$palabra" >> "$arxiu"
    fi
done

echo "$arxiu guardat."
