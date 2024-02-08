#!/bin/bash

URL="https://agora.xtec.cat/ies-sabadell/"

while ! curl -s --head "$URL" | grep "200 OK" > /dev/null; do
    echo "No conex internet"
    sleep 5
done

echo "Connex established"

firefox "$URL"  
