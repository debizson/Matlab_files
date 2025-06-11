ffun=@(x,y)3*y;
[X,Y]=meshgrid(-2:.3:2,-2:.3:2)

DY=ffun(X,Y);
DX=ones(size(DY));

quiver(X,Y,DX,DY);

hold on;

for C=-1:0.1:1
    fplot(@(x)C*exp(3*x),[-2,.5]);
end

slopes=ffun(X,Y);
DY=slopes./sqrt(1+slopes.^2);
DX=sqrt(1-DY.^2);

quiver(X,Y,DX,DY);