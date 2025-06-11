function polyroots

p=[1 2 0 0];

fplot(@(x)polyval(p,x),[-3,1]);
hold on;
plot(roots(p),[0 0 0],'X')

fplot(@(x)polyval(polyder(p),x),[-3,1]);
plot(roots(polyder(p)),[0 0 ],'gX')

fplot(@(x)polyval(polyder(polyder(p)),x),[-3,1]);
plot(roots(polyder(polyder(p))),[0],'rX')


