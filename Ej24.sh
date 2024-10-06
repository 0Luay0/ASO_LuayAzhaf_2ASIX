#!/bin/bash

directorio=$1
if [ ! -d "$directorio" ]; then
  echo "El directorio '$directorio' no existe o no es válido."
  exit 1
fi

ficheros=$(find "$directorio" -maxdepth 1 -type f | wc -l)
subdirectorios=$(find "$directorio" -maxdepth 1 -type d | wc -l)
subdirectorios=$((subdirectorios - 1))

echo "Ficheros: $ficheros"
echo "Subdirectorios: $subdirectorios"
