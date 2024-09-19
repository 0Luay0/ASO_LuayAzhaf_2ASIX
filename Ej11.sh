#!/bin/bash

if [[ $# -gt 2 ]]; then
	echo "Error, debes poner solo 2 parametros"
fi

if [[ -e $2 ]];then
	echo "Error, ya hay un archivo con el mismo nombre"
fi

if [[ -f $1 ]]; then
	cp $1 $2
else
	echo "Error, el archivo que se desea copiar no es un archivo ordinario"
fi
