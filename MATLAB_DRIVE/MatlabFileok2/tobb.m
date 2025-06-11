function tobb

x=-100:100;
x=-100:-99;
y=-100:100;
%y=-100:-99;
[X,Y]=meshgrid(x,y);

Z=100*sin(X)+Y.^2/100+X.*Y/10;

surf(X,Y,Z)