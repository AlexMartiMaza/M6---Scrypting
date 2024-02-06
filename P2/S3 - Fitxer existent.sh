#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <ruta_fitxer>"
    exit 1
fi

fitxer="$1"

if [ -e "$fitxer" ]; then
    echo "$archivo existeix."
else
    echo "$fitxer no existeix."
fi
