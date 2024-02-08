#!/bin/bash

users_mayus=$(grep -E '^[^:]*[[:upper:]]' /etc/passwd | cut -d: -f1)


if [ -z "$users_mayus" ]; then
    echo "No hi ha users amb mayus."
    exit 1
fi

echo "Users with mayus:"
echo "$users_mayus"


while true; do
    read -p "Nom usuer: " nom_user
    
    if id "$nom_user" &>/dev/null; then
        break
    else
        echo "Error name user"
    fi
done

echo "Info user: $nom_user"
finger "$nom_user"
