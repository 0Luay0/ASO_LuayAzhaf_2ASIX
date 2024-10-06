#!/bin/bash

directorio=$1
if [ ! -d "$directorio" ]; then
  echo "El directorio '$directorio' no existe o no es válido."
  exit 1
fi

contador=0

for entrada in "$directorio"/*; do
  if [ -d "$entrada" ]; then
    echo "Directorio: $entrada"
  elif [ -f "$entrada" ]; then
    echo "Fichero: $entrada"
  fi

  contador=$((contador + 1))
done

echo "Número total de entradas procesadas: $contador"
