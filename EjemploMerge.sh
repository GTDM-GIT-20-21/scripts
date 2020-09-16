#!/bin/bash

# Genera un repositorio para ejemplo de merge

directorio=~/Desktop/TS1-GTDM/EjemploMerge
mkdir -p $directorio

cd $directorio
echo -en "\n---------Directorio de pruebas:" `pwd` "\n\n"
rm -rf $directorio/.git

git init

echo "Una línea" > fichero
git add fichero
git commit -m "Primer commit"

echo "Segunda línea" >> fichero
git add fichero
git commit -m "Segundo commit"

echo "Tercera línea" >> fichero
git add fichero
git commit -m "Tercer commit"

git branch hotfix
git branch develop

echo "Cuarta línea" >> fichero
git add fichero
git commit -m "Cuarto commit"

echo "Quinta línea" >> fichero
git add fichero
git commit -m "Quinta commit"

echo "Sexta línea" >> fichero
git add fichero
git commit -m "Sexta commit"

git checkout hotfix

echo -e -n "Primera línea\n\
Esta es distinta\n\
Tercera línea\n\
Fourth line\n" > fichero
git add fichero
git commit -m "Primer commit desde hotfix"

echo "Una última línea más" >> fichero
git add fichero
git commit -m "Segundo commit desde hotfix"

git checkout master



