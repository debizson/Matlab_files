function NumInt

h=4:10;
h=2.^(-h);
f=@(x)(x.^2);
f=@(x)(x.^6);
x0=1;
x1=3;
temp =[];
for H=h
temp=[temp [Teglalap(f,H,x0,x1);...
Trapez(f,H,x0,x1);...
Simpson(f,H,x0,x1)]];
end
plot(h',temp)

function ter=Teglalap(f,h,x0,x1)
x=x0:h:x1;
ter=sum(h*f(x(1:(length(x)-1))));

function ter=Trapez(f,h,x0,x1)
x=x0:h:x1;
ter=sum(h/2*f(x(1:(length(x)-1))))+...
    sum(h/2*f(x(2:(length(x)))));

function ter=Simpson(f,h,x0,x1)
x=x0:h/2:x1;
ter = (h/2)/3*(f(x(1))+4*sum(f(x(2:2:(length(x)-1))))+...
        2*sum(f(x(3:2:(length(x)-2))))+f(x(length(x))));
    