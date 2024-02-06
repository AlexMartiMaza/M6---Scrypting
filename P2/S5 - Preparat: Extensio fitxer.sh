#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <ruta_fitxer>"
    exit 1
fi

fitxer="$1"

if [ ! -e "$fitxer" ]; then
    echo "$archivo no existeix."
    exit 1
fi

if [ -d "$fitxer" ]; then
    echo "$fitxer es un directori."
elif [ -f "$fitxer" ]; then
    echo "$fitxer es un fitxer."
    

    name=$(basename "$fitxer")
    extensio="${name##*.}"
    echo "Extensio: $extensio"
else
    echo "$fitxer no es fitxer ni directori."
fi
