#!/bin/bash

mkdir ~/Desktop/EjemploComandos

cd ~/Desktop/EjemploComandos

mkdir dir1
cd dir1

echo "En fichero A.txt" > A.txt
echo "En fichero B.txt" > B.txt

mkdir dir11
cd dir11

echo "En fichero C.txt" > C.txt
echo "Nueva linea" >> C.txt

cd ../../
mkdir dir2
cd dir2

echo "En fichero E.txt" > E.txt

cd ../dir1/dir11

echo "Nueva línea" > D.txt