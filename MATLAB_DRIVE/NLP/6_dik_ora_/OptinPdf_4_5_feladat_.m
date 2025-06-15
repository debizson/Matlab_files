%feladat. Készítsünk ábrát MATLAB-ban annak illusztrálására, hogy
% az alábbi kétváltozós konvex valós függvén egy pontjához
% húzott érintősíkja alatta van a függvény gráfjának.

%f(x,y) = x^2 + 2*y^2

x = -4:0.1:4;
y=x;
[x,y]=meshgrid(x,y);
z1=4*x+4*y-6;
z2=x.^2+2*y.^2;
mesh(z1)
hold on
mesh(z2)