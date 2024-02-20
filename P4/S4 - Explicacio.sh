#!/bin/bash

USG_ERR=7 #Codi d’error

#Funcio que determina el maxim entre dos numeros
max_dos ( ) {  
	if [ "$1" -eq "$2" ] ; then
		echo 'Iguals'
		exit 0
	elif [ "$1" -gt "$2" ] ; then
		ret_val=$1
	else
		ret_val=$2
	fi
}

#Funcio que mostra missatge d’error
err_str ( ) {
	echo "Ús: $0 <numero1>  <numero2>"
	exit $USG_ERR
}

#Agafa els numeros
NUM_1=$1
NUM_2=$2

#Verifica que s’han introduit
if [ $# -ne 2 ] ; then
	err_str
#Verifica que siguin numeros valids
elif [ `expr $NUM_1 : '[0-9]*'` -eq ${#NUM_1} ] ; then
	if [ `expr $NUM_2 : '[0-9]*'` -eq ${#NUM_2} ] ; then  
		max_dos $NUM_1 $NUM_2 #Executa la funcio
		echo $ret_val #Resultat
	else
		err_str  #Misatge de error
	fi
else
	err_str  #Misatge de error
fi

exit 0



