#!/bin/bash

while true; do
    clear
    echo "Welcome to Piedra, Papel o Tijeras"
    echo "Elige: (piedra, papel o tijeras):"
    read -r eleccion_usuario

    if [ "$eleccion_usuario" = "piedra" ] || [ "$eleccion_usuario" = "papel" ] || [ "$eleccion_usuario" = "tijeras" ]; then
        opciones=("piedra" "papel" "tijeras")
        eleccion_maquina=${opciones[$((RANDOM % 3))]}
        
        if [ "$eleccion_usuario" = "$eleccion_maquina" ]; then
            resultado="Empate"
        elif [ "$eleccion_usuario" = "piedra" ] && [ "$eleccion_maquina" = "tijeras" ] ||
             [ "$eleccion_usuario" = "papel" ] && [ "$eleccion_maquina" = "piedra" ] ||
             [ "$eleccion_usuario" = "tijeras" ] && [ "$eleccion_maquina" = "papel" ]; then
            resultado="WINNNEEEER!!"
        else
            resultado="LOOOSEEEER!!!"
        fi


        echo "Tu eleccion: $eleccion_usuario"
        echo "Elección de la maquina: $eleccion_maquina"
        echo "Resultado: $resultado"

        read -p "Seguir jugando? (s/n): " continuar
        if [ "$continuar" != "s" ]; then
            break
        fi
    else
        echo "ERROR: piedra, papel o tijeras."
    fi
done
