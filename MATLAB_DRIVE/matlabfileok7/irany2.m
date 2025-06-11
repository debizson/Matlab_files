ffun=@(x,y)x-3./x.*y;
[X,Y]=meshgrid(-2:.3:2,-2:.3:2)

DY=ffun(X,Y);
DX=ones(size(DY));

quiver(X,Y,DX,DY);

hold on;

for C=-0.005:0.1:0.005
    fplot(@(x)C*x.^-3+x.^2/5,[-0.5,-0.1]);
end
