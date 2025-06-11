function defhiba
f=@exp;
x0=1;
h=0.001:0.001:0.01;
hiba1=(f(x0+h)-f(x0))./h;
hiba2=(f(x0+h)-f(x0-h))./(2*h);
plot(h,[hiba1-f(x0);hiba2-f(x0)]);