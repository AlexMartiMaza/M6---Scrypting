#!/bin/bash

while true; do
    echo "Continuem en l'espiral d'emocions, alegries i èxits?"
    
    read -r resposta
    
    case $resposta in
        [Ss][Ii])  
            echo "Continuem!!!"
            xdg-open "https://www.youtube.com/watch?v=jaLDoWqIq2M"
            ;;
        [Nn][Oo]) 
            echo "Una pena... adeu!"
            break  
            ;;
        *)  
            echo "ERROR; ha de ser 'si' o 'no'."
            ;;
    esac
done
