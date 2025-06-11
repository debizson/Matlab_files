a=0.1;
b=0.2;
f=@(x)a.*x-b.*x.^2;
x=0:10;
t=0:10;

[X,T]=meshgrid(x,t);
quiver(T,X,ones(size(X)),f(X));

hold on;

xlabel('Ido')
ylabel('Kacsak szama');
axis([0,10,0,10]);