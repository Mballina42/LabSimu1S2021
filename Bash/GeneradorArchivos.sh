#!/bin/bash

: << 'Header'
Autor:              Maynor Ballina
Fecha:              02-03-2021
Tipo de archivo:    Script de Bash
Para ejecutar:      ./GerneradorArchivo.sh
Resumen:            Generador automatico de comentarios para scripts de C.
Header

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
#crear nuestro contenido dentro del archivo .c
echo "/*" > $fnombre
echo "Autor:    Maynor Ballina" >> $fnombre
echo "Fecha: " $fecha >> $fnombre
echo "compilador: " $version >> $fnombre
echo Para Compilar: gcc -o $nombre $fnombre >> $fnombre
echo "Version: 1.0" >> $fnombre
echo "librerias: stdio (u otras)" >> $fnombre
echo "Resumen, Entradasm Salidas" >> $fnombre
echo "*/" >> $fnombre
