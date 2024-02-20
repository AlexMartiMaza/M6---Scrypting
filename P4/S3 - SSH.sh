#!/bin/bash

usuari_remot="usuari_remot"
host_remot="host_remot"

comands=$(cat <<EOF
echo "Connexio exitosa!"
echo "User connectat: \$(whoami)"
echo "Directori actual \$(pwd)"
EOF
)

ssh "$usuari_remoto@$host_remot" "$comands"
