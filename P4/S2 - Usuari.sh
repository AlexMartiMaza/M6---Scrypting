#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <user>"
    exit 1
fi

usuari="$1"

echo "1. Comprovar drets d'administrador"
echo "2. Comprovar si l'usuari existeix"
echo "3. Comprovar la ruta del directori existeix"
echo "Opció (1/2/3):"
read -r opcio


case $opcio in
    1)
        if [ "$(id -u)" -eq 0 ]; then
            echo "L'usuari te drets d'administrador."
        else
            echo "No te drets d'administrador."
        fi
        ;;
    2)
        id "$usuari" &>/dev/null
        if [ $? -eq 0 ]; then
            echo "$usuari existeix."
        else
            echo "$usuari no existeix."
        fi
        ;;
    3)
        home_dir=$(eval echo "~$usuari")
        if [ -d "$home_dir" ]; then
            echo "La ruta del directori personal de $usuari és vàlida i existeix: $home_dir"
        else
            echo "La ruta del directori personal de $usuari no existeix."
        fi
        ;;
    *)
        echo "Opció no vàlida."
        ;;
esac

