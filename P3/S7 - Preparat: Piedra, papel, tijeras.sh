#!/bin/bash

while true; do
    clear
    echo "¡Bienvenido al juego de piedra, papel o tijeras!"
    echo "Elige tu opción (piedra, papel o tijeras):"
    read -r eleccion_usuario

    # Verificar la elección del usuario
    if [ "$eleccion_usuario" = "piedra" ] || [ "$eleccion_usuario" = "papel" ] || [ "$eleccion_usuario" = "tijeras" ]; then
        # Generar la elección aleatoria de la máquina
        opciones=("piedra" "papel" "tijeras")
        eleccion_maquina=${opciones[$((RANDOM % 3))]}
        
        # Determinar el resultado del juego
        if [ "$eleccion_usuario" = "$eleccion_maquina" ]; then
            resultado="Empate"
        elif [ "$eleccion_usuario" = "piedra" ] && [ "$eleccion_maquina" = "tijeras" ] ||
             [ "$eleccion_usuario" = "papel" ] && [ "$eleccion_maquina" = "piedra" ] ||
             [ "$eleccion_usuario" = "tijeras" ] && [ "$eleccion_maquina" = "papel" ]; then
            resultado="¡Felicidades! ¡Has ganado!"
        else
            resultado="La máquina gana"
        fi

        # Mostrar el resultado del juego
        echo "Tu elección: $eleccion_usuario"
        echo "Elección de la máquina: $eleccion_maquina"
        echo "Resultado: $resultado"

        # Preguntar al usuario si quiere seguir jugando
        read -p "¿Quieres seguir jugando? (s/n): " continuar
        if [ "$continuar" != "s" ]; then
            break
        fi
    else
        echo "Opción no válida. Por favor, elige entre piedra, papel o tijeras."
    fi
done
