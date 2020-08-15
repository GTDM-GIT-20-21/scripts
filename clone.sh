mkdir DIR_TRABAJO
cd DIR_TRABAJO
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

git remote add origin https://github.com/GTDM-GIT-20-21/EjemploRamas.git
git push -f origin --all
