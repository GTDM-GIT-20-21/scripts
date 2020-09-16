#!/bin/bash

# Genera un repositorio para observar diferencias

directorio=~/Desktop/TS1-GTDM/EjemploDiff
mkdir -p $directorio

cd $directorio
rm -rf $directorio/.git

git init

echo "Primera línea" > fichero
git add fichero
git commit -m "Primer commit"

echo "Segunda línea" >> fichero
git add fichero
git commit -m "Segundo commit"

echo "Tercera línea" >> fichero
git add fichero
git commit -m "Primer commit"

echo "Cuarta línea" >> fichero
git add fichero
git commit -m "Cuarto commit"

echo "Quinta línea" >> fichero
git add fichero
git commit -m "Quinto commit"
