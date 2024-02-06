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

echo "Permisos de $fitxer:"
echo -n "Lectura: "
[ -r "$fitxer" ] && echo "Yes" || echo "No"
echo -n "Escriptura: "
[ -w "$fitxer" ] && echo "Yes" || echo "No"
echo -n "Execucio: "
[ -x "$fitxer" ] && echo "Yes" || echo "No"
