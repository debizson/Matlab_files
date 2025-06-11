function inga
x1=-pi:0.3:3*pi;
x2=-2:0.3:2;
k=1;

[X1,X2]= meshgrid(x1,x2);

DX1=X2;
DX2=-k.*X2-sin(X1);

quiver(X1,X2,DX1,DX2);