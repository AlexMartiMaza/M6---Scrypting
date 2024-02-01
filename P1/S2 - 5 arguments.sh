#!/bin/bash

if [ "$#" -lt 5 ]; then
    echo "Error: Se necesitan 5 argumentos."
    exit 1
fi

echo "Los 5 argumentos:"
echo "1. $1"
echo "2. $2"
echo "3. $3"
echo "4. $4"
echo "5. $5"

echo -e "\nScript Name: $0"
