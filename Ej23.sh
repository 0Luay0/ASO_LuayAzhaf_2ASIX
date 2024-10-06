#!/bin/bash

dir=$1
if [ ! -d "$dir" ]; then
  echo "El dir '$directorio' no existe o no es válido."
  exit 1
fi

cont=0

for entrada in "$dir"/*; do
  if [ -d "$entrada" ]; then
    echo "Directorio: $entrada"
  elif [ -f "$entrada" ]; then
    echo "Fichero: $entrada"
  elif [ -L "$entrada" ]; then
    echo "Enlace simbólico: $entrada"
  elif [ -b "$entrada" ]; then
    echo "Archivo especial de bloque: $entrada"
  elif [ -c "$entrada" ]; then
    echo "Archivo especial de carácter: $entrada"
  fi

  cont=$((cont + 1))
done

echo "Número total de entradas procesadas: $contador"
