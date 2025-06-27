% Az lsqnonlin függvénnyel a 
%  min F(x) = 1/2*sum(i=1 ton k)fi(x)^2 alakú 
%  legkisebb négyzetek problémáját oldhatjuk meg.
% Legegyszerűbb függvényhívás: 

% lsqnonlin(fun,x0)

% A teljes szintaxis: 
% [x,resnorm,residual,exitflag,output,lambda,jacobian] = 
%  lsqnonlin(fun,x0,lb,ub,options)

% 8.4.1 Példa a Nemlineáris Progr. könyvből, a hátuljából

% A minimalizálandó függvény:

% f(x) = (x1^3+3*x2*x3 - 4*x1*x2 + 79)^2 + (2*x1^2 - x3 + 6*x2
%  - 33)^2 + (2*x2^2 - x1^2 + x3^2 - 63)^2.  

% Határozzuk meg az fi komponenseiből álló fun függvényt!


fun=@(x)[x(1)^3+3*x(2)*x(3)-4*x(1)*x(2)+79;
    2*x(1)^2-x(3)+6*x(2)-33; 2*x(2)^2-x(1)^2+x(3)^2-63]

% Hívjuk meg erre az lsqnonlin függvényt a [0, 0, 0] kezdőértékkel.

lsqnonlin(fun,[7 2 4])

% valszeg más eredmények lesznek mint a könyvben vannak