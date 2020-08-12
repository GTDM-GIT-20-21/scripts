mkdir DIR_TRABAJO
cd DIR_TRABAJO
git init

echo "Contenido de f1" > f1
git add f1

mkdir dir1
cd dir1
echo "Contenido de f11" > f11
git add f11
echo "Contenido de f12" > f12
echo "Contenido de f13" > f13
git add f13
echo "Contenido de f14.txt" > f14.txt

cd ..
mkdir dir2
cd dir2
echo "Contenido de f21" > f21
git add f21
echo "Contenido de f22" > f22
git add f22
echo "Contenido de f23" > f23
git add f23
echo "Contenido de f24" > f24
echo "Contenido de f25.txt" > f25.txt
git add f25.txt

cd ..
echo "Conteniodo de f2" > f2
git add f2


#####

echo "Modificación a f1"  >> f1
echo "Modificación a f13" >> dir1/f13
echo "Modificación a f21" >> dir2/f21
rm dir2/f23
mkdir dir2/dir21
echo "Contenido de f211" > dir2/dir21/f211
mkdir dir2/dir22
echo "Modificación a f25.txt" >> dir2/f25.txt