% Az fminsearch direkt keresővel ellentétben az fminunc függvény
%  már a gradiens, illetve a Hesse - mátrixra is támaszkodhat az opti-
%  malizálás során

% A legegyszrűbb függvényhívás:

% fminunc(fun, x0)

% A teljes szintaxis

%[x,fval,exitflag, output,grad, hessian] = fminunc(fun,x0,options)

% függvénybeállítási módszerek, lsd. a Nemlineáris Programozás 
%  Tk. 115. 116. oldalán

% Az fenti oldalakon találahtó feladat:
% Minimalizáljuk a Hatpúpú tevehát függvényt az fminunc függvény 
% felhasználásával!

% Megoldás. Adjuk meg először az optimalizálandó függvényt, annak
% gradiensét és Hesse - mátrixát. A függvény a SHCB file - ban.

% Adjunk kezdőértéket a kereséshez, valamint állítsuk be, hogy az 
% optimalizálás során a deriváltakat is használjuk.

x0 = [1 0];
options = optimset('GradObj','on','Hessian','on');
[x, fval]= fminunc('SHCB',x0,options)