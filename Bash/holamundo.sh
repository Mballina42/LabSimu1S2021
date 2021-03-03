#!/bin/bash

# comentario de parrafo completo
: << 'Header'
Autor:              Maynor Ballina
Fecha:              02-03-2021
Tipo de archivo:    Script de Bash
Para ejecutar:      ./holamundo.sh
Resumen:            Ejemplo basico del uso de bash para crear scripts automatizados
Header

#variales estas deben de estar seguidas del sigo = si se le quiere dar un valor
texto=""  #variable de texto vacia
nombre="Maynor Ballina"  #variable con un valor
fecha=$(date)  #se pueden utilizar comandos de consola con el siguiente formato, todo el comando debe de ir dentro de los parentesis
archivo=$(cat ~/.vimrc) #se pueden utilizar comandos de consola para obtener el contenido de un archivo y guardarlo en una varable

#imprimir informacion en consola
echo hola mundo #esto imprime la palabra hola mundo
echo "hola mundo" #se puede utilizar comillas dobles para encerrar la frase
echo 'hola "mundo"' #las comillas simples toman los elementos de forma literal esto sirve si quiero que se impriman las comillas dobles
echo $nombre #para imprimir variables se debe de colocar el simbolo de peso precio al nombre de la variable
echo "Mi nombre es" $nombre #se pueden concatenar cadenas de caracteres
echo Mi nombre es $nombre, hoy es $fecha #contatenar texto sin necesidad de comillas
echo -e $nombre '\n'$fecha #-e activa la interpretacion de los caracteres de salto de linea, este debe de escribirse entre comillas simples
echo $USER #se pueden imprimir variables propias de linux
#manupilacion de texto
echo ${nombre/y/Y} #se ouede substituir una sola letra
echo ${nombre/a/X} #pero solo la primera encontrada
echo ${nombre:7:2} #se puede recortar texto:posicion inicial:numero de caracteres
date && uname -a  #se puede combinar instrucciones utilizando && (y) u || (o)
#validacion de elementos por condicionales
if [ -z "$nombre" ]; then #la condicion inicia por medio de la pregunta por medio de la instruccion if
    echo "esta vacio"
elif [ -n "$nombre" ]; then #para realizar mas de una pregunta se utiliza un if anidado con la instruccion elif
    echo "esta lleno"
fi #todo if debe de finalizarce con la instrccion fi
