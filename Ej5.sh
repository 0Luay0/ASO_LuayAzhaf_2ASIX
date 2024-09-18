#!/bin/bash

read -p "Introduce un numero: " num1
read -p "Introduce otro numero: " num2

suma=$((num1+num2))
div=$((suma/2))
echo "La media es: $div" 
