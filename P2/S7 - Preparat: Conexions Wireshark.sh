#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <ruta_fitxer_wireshark>"
    exit 1
fi

fitxer="$1"

if [ ! -f "$fitxer" ]; then
    echo "$fitxer no existeix."
    exit 1
fi


tcp_conex=$(grep -c "TCP" "$fitxer")
udp_conex=$(grep -c "UDP" "$fitxer")

echo "Conex TCP: $tcp_conex"
echo "Conex UDP: $udp_conex"
