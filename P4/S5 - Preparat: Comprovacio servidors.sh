#!/bin/bash

estado_servidor() {
    servidor="$1"
    estado=$(ping -c 1 "$servidor" >/dev/null 2>&1 && echo "Actiu" || echo "Inactiu")
    echo "El servidor $servidor esta $estado."
    echo "$servidor: $estado" >> reg.txt
}


mensaje_uso() {
    cat <<EOF
Us: $0 <servidor1> <servidor2> ... <servidorn>
Comprova l'estat dels servidors remots especificats i registra el resultat en un arxiu.
EOF
}


if [ $# -eq 0 ]; then
    mensaje_uso
    exit 1
fi

> reg.txt


for servidor in "$@"; do
    estado_servidor "$servidor"
done

echo "Comprovacio completada. Els resultats s'han registrat en 'reg.txt'."
