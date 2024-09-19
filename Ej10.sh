#!/bin/bash

read -p "Ponme un numero para decirte si es par o impar: " num

if [[ num%2 -eq 0 ]]; then
	echo "El $num es par"
else
	echo "El $num es impar"
fi
