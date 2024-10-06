#!/bin/bash


  if [ -e "$1" ]; then
    chmod u+x "$1"
    echo "Se han cambiado los permisos de '$1' a ejecutable para el propietario."
  else
    echo "El fichero '$1' no existe."
  fi

echo "existe $1"
