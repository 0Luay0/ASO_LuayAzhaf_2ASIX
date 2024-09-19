#!/bin/bash

read -p "Pon un numero: " num1

read -p "Pon otro numero: " num2

if [[ $num1 -gt $num2 ]]; then

	echo "El numero mas grande es el $num1"
else
	echo "El numero mas grande es el $num2"

fi
