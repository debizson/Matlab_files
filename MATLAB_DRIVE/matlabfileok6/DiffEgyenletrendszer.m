function DiffEgyenletrendszer

Func = @f;

[y t]=euler(Func,0,[0;0],1,10);
plot(t,y(1,:),'r');
hold on;
plot(t,y(2,:),'r');
hold on;


function [y,t]=euler(f,t0,y0,tf,N)
t=[t0];
y=[y0];
h=(tf-t0)/N;
for i=1:N
    yi1=y(:,i)+h*f(t(i),y(:,i));
    ti1=t(i)+h;
    y=[y,yi1];
    t=[t,ti1];
end

function [yp] = f(t,y)
yp=zeros(2,1);
yp(2)=9.81;
yp(1)=y(2);