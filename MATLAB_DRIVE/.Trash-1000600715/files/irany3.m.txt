ffun=@(x,y)(3*x.^2+4*x+2)./(2*(y-1));
[X,Y]=meshgrid(-2.2:0.1:-1.8,0.85:0.1:1.25)

DY=ffun(X,Y)
DX=ones(size(DY));

quiver(X,Y,DX,DY);

hold on;

for C=-0.005:0.1:0.005
%    fplot(@(x)C*x.^-3+x.^2/5,[-0.5,-0.1]);
end
