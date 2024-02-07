#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <fitxer>"
    exit 1
fi

arxiu="$1"

if [ ! -f "$arxiu" ]; then
    echo "Error: $arxiu no existeix."
    exit 1
fi

for linea in $(cat "$arxiu"); do
    if ! [[ "$linea" =~ ^[[:space:]]*# ]]; then
        echo "$linea" >> "$arxiu.tmp"
    fi
done

mv "$arxiu.tmp" "$arxiu"

read -p "Introdueix una paraula o frase per comprovar si existeix al fitxer: " palabra_frase
if grep -q "$palabra_frase" "$arxiu"; then
    echo "La paraula o frase \"$palabra_frase\" existeix al fitxer."
else
    echo "La paraula o frase \"$palabra_frase\" no existeix al fitxer."
fi

while true; do
    read -p "Introdueix una frase per afegir al final del fitxer: " frase
    if [ -n "$frase" ]; then
        break
    else
        echo "Introduir una frase per afegir al fitxer."
    fi
done


echo "$frase" >> "$arxiu"
echo "S'ha afegit la frase \"$frase\" al final del fitxer."
