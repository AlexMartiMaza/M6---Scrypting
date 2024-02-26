#!/bin/bash

mostrar_uso() {
    echo "Uso: $0 <usuario@servidor>"
    echo "Ejemplo: $0 user@example.com"
}

comando_disponible() {
    command -v $1 >/dev/null 2>&1 || { echo >&2 "$1 no está instalado. Instalelo."; exit 1; }
}

instalar_nmap() {
    echo "Comprobando si NMAP está instalado en el servidor $1..."
    ssh $1 "command -v nmap >/dev/null 2>&1 || { echo 'NMAP no está instalado. Instalando NMAP...'; sudo apt-get update && sudo apt-get install -y nmap; }"
}

comprobar_puertos() {
    echo "Comprobando puertos abiertos en el servidor $1..."
    ssh $1 "sudo netstat -tuln"
}

comprobar_servicios() {
    echo "Comprobando estado de los servicios en el servidor $1..."
    systemctl status nombre_del_servicio
}


comprobar_interno() {
    echo "Comprobando funcionamiento interno del servidor $1..."
    smartctl -a /dev/sda
}


if [ $# -ne 1 ]; then
    mostrar_uso
    exit 1
fi

servidor=$1

comando_disponible ssh

instalar_nmap $servidor

comprobar_puertos $servidor

comprobar_servicios $servidor

comprobar_interno $servidor

echo "Comprobaciones completadas."
