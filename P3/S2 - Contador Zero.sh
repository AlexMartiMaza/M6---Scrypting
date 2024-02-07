#!/bin/bash

echo "Introdueix una cadena de nums separats per espais:"
read -r cadena

cont=0

IFS=' ' read -r -a nombres <<< "$cadena"

for nombre in "${nombres[@]}"; do
    if [ "$nombre" -eq 0 ]; then
        ((cont++))
    fi
done

echo "Total: $cont "
