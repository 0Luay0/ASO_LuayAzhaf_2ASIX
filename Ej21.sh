#!/bin/bash


numero_a_adivinar=$((RANDOM % 100 + 1))

echo "Tienes que adivinar un número entre 1 y 100."
echo "Introduce 0 para rendirte."

while true; do
  read -p "Introduce un número: " numero_usuario

  if [ "$numero_usuario" -eq 0 ]; then
    echo "Te has rendido. El número era $numero_a_adivinar."
    break
  fi

  if [ "$numero_usuario" -eq "$numero_a_adivinar" ]; then
    echo "¡Enhorabuena! Has adivinado el número."
    break
  fi


  if [ "$numero_usuario" -lt "$numero_a_adivinar" ]; then
    echo "El número es mayor que $numero_usuario."
  else
    echo "El número es menor que $numero_usuario."
  fi
done
