#!/bin/bash

# Genera un repositorio para observar diferencias

directorio=~/Desktop/TS1-GTDM/EjemploRemotoLocal
mkdir -p $directorio

cd $directorio
echo -en "\n---------Directorio de pruebas:" `pwd` "\n\n"
rm -rf $directorio/.git

git init

echo "Contenido de f1, versión v1" > f1
git add f1
git commit -m "Primera versión de f1"

echo "Contenido adicional de f1, versión v2" >> f1
git add f1
git commit -m "Segunda versión de f1"

echo "Contenido adicional de f1, versión v3" >> f1
git add f1
git commit -m "Tercera versión de f1"

echo "Contenido adicional de f1, version v4" >> f1
git add f1
git commit -m "Cuarta versión de f1"

git checkout -b testing HEAD^
echo "Contenido adicional de f1, version 3.testing" >> f1
git add f1
git commit -m "Tercera version, primera subversion"

git checkout HEAD^^ -b rama
echo "Contenido adicional de f1, version 2.rama" >> f1
git add f1
git commit -m "Segunda version, primera subversion"

git log --all --oneline --graph

git remote add origin https://github.com/fjmz-UPV/EjemploRemotoLocal.git
git push -f origin master testing rama


git remote add origin2 https://github.com/GTDM-GIT-20-21/EjemploRemotoLocal_alumnos.git
git push -f origin2 master testing rama

