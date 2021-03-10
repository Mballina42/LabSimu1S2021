/*
Autor:    Maynor Ballina
Fecha:  Tue Mar 9 11:46:30 CST 2021
compilador:  gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Para Compilar: gcc -o TipoVariables TipoVariables.c
Version: 1.0
librerias: stdio
Resumen: ejemplo del uso de variables y sus tipos
*/

//incluir librerias
#include <stdio.h>
//Constantes
#define PI 3.1416 //se pueden definir con la palabra define
const float g = 9.8; // tambien con la palabra const como si fuera una variable

//variable global
int x; //una variable se puede definir estableciendo el tipo de dato
char texto;


int main(){
    //Las variables locales se definen dentro de las funciones
    float resultado;
    double res = 0.000253;
    //Al tener definidas las variable estas se inicializan agregando el valor inicial utilizando el signo =
    x=2;
    texto = 'Y';
    //Tambien se puede definir e inicializar una variable en una sola linea de codigo
    int y = 3;
     
    //Para imprimir diferentes tipos de variable existen varios elementos de texto
    printf("entero: %d, punto flotante: %f, texto %c, double %f, doble con formato cientifico %e \n",x, PI, texto, res, res);
    
    //operaciones entre enteros respuesta en entero
    x = 2+y;
    printf("x=2+y : %d \n",x);
    //operacion entre enteros y flotante con respuesta entero
    x=y*PI;
    printf("x=y*PI: %d \n",x);
    //operacion entre enteros respuesta flotante
    resultado=y+3;
    printf("resultado=y+3: %f \n",resultado);
    //operacion entre entero y flotante con respuesta flotante
    resultado=y*PI;
    printf("resultado=y*PI: %f \n",resultado);
    //operacion entre enteros y respuesta flotante debe de ser convertida en flotante
    resultado= (float) y/x;
    printf("resultado: %f \n",resultado);
}
