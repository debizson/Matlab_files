function differencial
N=16;

Func=@f2;


[y t]=euler(Func,0,1,2,N);
plot(t,y,'c')
hold on;

N=N/2;

[y t]=modeuler(Func,0,1,2,N);
plot(t,y,'b')
hold on;

N=N/2;

[y t]=rk45(Func,0,1,2,N);
plot(t,y,'y')
hold on;

[y t]=taylor4th(Func,0,1,2,N);
plot(t,y,'r')
hold on;

%fplot(@(x)exp(x),[0 2],'g');
%hold off;
fplot(@(x)sin(x)+1,[0 2],'g');
hold off;


function [y t]=taylor4th(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;

for i=1:N
    [yp ypp yppp ypppp] = f(y(i),t(i));
    ti1=t(end)+h;
    yi1=y(end)+h*yp+h^2*ypp/factorial(2)+h^3*yppp/factorial(3)+h^4*ypp/factorial(4);
    y=[y yi1];
    t=[t ti1];
end

function [y t]=rk45(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;

for i=1:N
    k1=f(y(end),t(end))
    k2=f(y(i)+h/2*(k1),t(i)+h/2)
    k3=f(y(i)+h/2*(k2),t(i)+h/2)
    k4=f(y(i)+h*(k3),t(i)+h/2)
    
    yi1=y(end)+h*(k1/6+k2/3+k3/3+k4/6);
    ti1=t(end)+h;

    y=[y yi1];
    t=[t ti1];
end


function [y t]=modeuler(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;

for i=1:N
    ti1=t(end)+h;
    ytemp=y(end)+h*f(y(end),t(end));
    yi1=y(end)+h/2*(f(y(end),t(end))+f(ytemp,ti1));
    y=[y yi1];
    t=[t ti1];
end



function [y t]=euler(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;

for i=1:N
    ti1=t(end)+h;
    yi1=y(end)+h*f(y(end),t(end));
    y=[y yi1];
    t=[t ti1];
end


function [yp ypp yppp ypppp] = f(y,t)
yp=y;
ypp=y;
yppp=y;
ypppp=y;

function [yp ypp yppp ypppp] = f2(y,t)
yp=cos(t);
ypp=-sin(t);
yppp=-cos(t);
ypppp=sin(t);
