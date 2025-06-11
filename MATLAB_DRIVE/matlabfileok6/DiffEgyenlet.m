function DiffEgyenlet

N=8;
Func = @f;

[y t]=euler(Func,0,1,2,N);
plot(t,y,'r');
hold on;

N=4;
[y t]=modeuler(Func,0,1,2,N);
plot(t,y,'b');

N=2;
[y t]=rk4(Func,0,1,2,N);
plot(t,y,'c');

N=8
[y t]=taylor4th(Func,0,1,2,N);
plot(t,y,'y');

fplot(@(x)exp(x),[0,2],'g');

function [y t]= taylor4th(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;
for i=1:N
    [yp ypp yppp ypppp]=f(t(i),y(i));
    yi1=y(i)+h*yp+h^2*ypp/factorial(2)+h^3*yppp/factorial(3)+h^4*ypppp/factorial(4);
    ti1=t(i)+h;
    y=[y,yi1];
    t=[t,ti1];
end

function [y t]=rk4(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;
for (i=1:N)
    k1=y(i);
    k2=F(t(i)+h/2,y(i)+h*k1/2);
    k3=F(t(i)+h/2,y(i)+h*k2/2);
    k4=F(t(i)+h,y(i)+h*k3);
    
    yi1=y(i)+h*...
        (k1/6+k2/3+k3/3+k4/6);
    ti1=t(i)+h;
    y=[y yi1];
    t=[t ti1];
end


function [y,t]=euler(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;
for i=1:N
    yi1=y(i)+h*f(t(i),y(i));
    ti1=t(i)+h;
    y=[y,yi1];
    t=[t,ti1];
end

function [y,t]=modeuler(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;
for i=1:N
    ytemp=y(i)+h/2*f(t(i),y(i));
    ttemp=t(i)+h/2;
    %yi1=y(i)+h*f(t(i)+h/2,y(ti+h/2));
    yi1=y(i)+h*f(ttemp,ytemp);
    ti1=t(i)+h;
    y=[y,yi1];
    t=[t,ti1];
end


function [yp ypp yppp ypppp]=f(t,y)
yp=y;
ypp=y;
yppp=y;
ypppp=y;