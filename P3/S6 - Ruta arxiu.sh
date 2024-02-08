#!/bin/bash

read -p "Ruta: " directori

if [ ! -d "$directori" ]; then
    echo "Error en la ruta."
    exit 1
fi


echo "Permisos $directori:"
ls -ld "$directori" | awk '{print $1}'

num_arxius=$(find "$directori" -maxdepth 1 -type f | wc -l)
num_carpetes=$(find "$directori" -maxdepth 1 -type d | wc -l)

echo "Num d'arxius: $num_arxius"
echo "Num carpetes: $num_carpetes"

echo "Arxius:"
ls -p "$directori" | grep -v /  
echo "Carpetes:"
ls -p "$directori" | grep /     
