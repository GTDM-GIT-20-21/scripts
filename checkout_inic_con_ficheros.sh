#!/bin/bash

# Genera un repositorio como punto de partida para los ejemplos de checkout con ficheros

directorio=~/Desktop/TS1-GTDM/EjemploCheckout_inic_con_ficheros
mkdir -p $directorio

cd $directorio
echo -en "\n---------Directorio de pruebas:" `pwd` "\n\n"
rm -rf $directorio/.git

git init


echo "Contenido de fichero 1 (v1)" > fichero1
echo "Contenido de fichero 2 (v1)" > fichero2
echo "Contenido de fichero 3 (v1)" > fichero3
echo "Contenido de fichero 4 (v1)" > fichero4

git add fichero1 fichero2

git commit -m "Primer commit"

git branch prueba

echo "Nueva línea para fichero 1 (v2)" > fichero1

git add fichero1 

git commit -m "Segundo commit"

echo "Otra línea más para fichero1 (v3)" > fichero1

git add fichero1 fichero3

git commit -m "Tercer commit"

echo "Nueva línea para fichero 2 (v2)" > fichero2

git add fichero2

echo "Y otra línea más para fichero1 (v4)" > fichero1


