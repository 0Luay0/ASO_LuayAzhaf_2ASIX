#!/bin/bash

 
if [ "$#" -lt 4 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi


accion="$1"
nombre="$2"
apellido1="$3"
apellido2="$4"
grupo="${5:-$nombre}"  # Si no se proporciona grupo, usamos el nombre como grupo


    local alu_id="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"
    echo "$alu_id"



if [ "$accion" == "alta" ]; then
    identificador=$(generar_identificador)


    if ! getent group "$grupo" > /dev/null; then
        groupadd "$grupo"
        echo "Grupo '$grupo' creado."
    fi

    if ! id "$identificador" &>/dev/null; then
        useradd -m -g "$grupo" "$identificador"
        echo "Usuario '$identificador' creado en el grupo '$grupo'."
    else
        echo "Error: El usuario '$identificador' ya existe."
    fi


elif [ "$accion" == "baja" ]; then
    identificador=$(generar_identificador)

    if id "$identificador" &>/dev/null; then
        userdel -r "$identificador"
        echo "Usuario '$identificador' eliminado."
    else
        echo "Error: El usuario '$identificador' no existe."
    fi


else
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi
