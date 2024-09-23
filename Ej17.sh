#!/bin/bash

read -p "Dame un numero para sumar: " num1

while [[ $num1 -ne 0 || $num2 -ne 0 ]];do

	read -p "Dame un numero para sumar: " num2

	if [[ $num2 -eq 0 ]]; then
		break
	fi

	num1=$((num1 + num2))

	echo "$num1"
done
