#!/bin/bash

echo "1-SUMAR" 
echo "2-RESTAR"
echo "3-MULTIPLICAR"
echo "4-DIVIDIR"

read -p "Pon el numero de la opcion que quieres elegir:  " op

read -p "Ponme un numero: " num1

read -p "Ponme otro numero: " num2

case $op in
	1)
		sum=$((num1+num2))
		echo "La suma de los dos numeros es:" $sum;;
	2)
		rest=$((num1-num2))
		echo "La resta de los dos numeros es:" $rest;;
	3)
		mult=$((num1*num2))
		echo "La multiplicacion entre los dos numeros es:" $mult;;
	4)
		div=$((num1/num2))
		echo "La division entre los dos numeros es:" $div;;
esac
