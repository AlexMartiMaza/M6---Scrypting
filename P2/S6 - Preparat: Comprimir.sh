#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <ruta_directori> <nom_tarball>"
    exit 1
fi

directori="$1"
tarball="$2"

if [ ! -d "$directori" ]; then
    echo "$directori no existeix."
    exit 1
fi

tar -czf "$tarball" "$directori"

if [ $? -eq 0 ]; then
    echo "$tarball created."
else
    echo "$tarball not created."
fi
