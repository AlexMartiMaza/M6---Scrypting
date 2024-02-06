#!/bin/bash

read -p "Num: " num

if [ $num -gt 0 ]; then
    echo "$num es positiu."
elif [ $num -lt 0 ]; then
    echo "$num es negatiu."
else
    echo "$num es igual a zero."
fi
