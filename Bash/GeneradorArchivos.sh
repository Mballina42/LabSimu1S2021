#!/bin/bash

#Autor: Maynor Ballina
#Tipo:  Script de Bash
#Ejecutar:  ./GerneradorArchivo.sh
#Resumen:   Generador automatico de comentarios para scripts de C.

#bienvenida
echo "* * * * Generador de archivos de C * * * * "
#obtener y validar el nombre del archivo
read -p "Ingrese el nombre del archivo: " nombre
fnombre=$nombre".c"
if [ -z $nombre ]; then
    echo "No ingreso un nombre valido"
    exit 2
fi
#obtener informacion del sistema
autor=$(whoami)
fecha=$(date)
version=$(gcc --version | head -n 1)
#crear nuestro contenido
echo "/*" > $fnombre
echo "Autor: " $autor >> $fnombre
echo "compilador: " $version >> $fnombre
echo Para Compilar: gcc -o $nombre $fnombre >> $fnombre
echo "Fecha: " $fecha >> $fnombre
echo "librerias: stdio (u otras)" >> $fnombre
echo "Resumen, Entradasm Salidas" >> $fnombre
echo "*/" >> $fnombre
