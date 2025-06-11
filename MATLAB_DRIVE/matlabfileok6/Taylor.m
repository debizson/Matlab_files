function Taylor

fplot(@(x)sin(x),[-4*pi,4*pi]);

x0=1/2;
hold on;
fplot(@(x)(sin(x0)+cos(x0)*(x-x0)),[-4*pi,4*pi]);

fplot(@(x)(sin(x0)+cos(x0)*(x-x0)-sin(x0)*(x-x0)^2/2),[-4*pi,4*pi]);
fplot(@(x)(sin(x0)+cos(x0)*(x-x0)-sin(x0)*(x-x0)^2/2-cos(x0)*(x-x0)^3/6),[-4*pi,4*pi],'g');

axis([-4*pi 4*pi -1 1])