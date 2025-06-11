a=0.1;
f=@(x)a.*x;
x=0:10;
t=0:10;

[X,T]=meshgrid(x,t);
quiver(T,X,ones(size(X)),f(X));

hold on;

fplot(@(x)exp(a.*x),[0,10]);
fplot(@(x)2*exp(a.*x),[0,10]);
xlabel('Ido')
ylabel('Kacsak szama');
axis([0,10,0,10]);