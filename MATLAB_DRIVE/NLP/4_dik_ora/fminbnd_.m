%Az fminbnd eljárást egyváltozós NLP-feladat megoldására használjuk,
%, ahol az optimumhelyet adott korlátos intervallumban keressük:
% Nézd át a függvény szintaxisát, sok jó beállatási lehetősége van.
% Beállításokról itt:Nemlineáris programozás Tankönyv 112. 113. oldal

f=@(x)x^5-4*x^3+6*x^2-8*x+10;
[x,fval] = fminbnd(f, -2, 2)


% Az egyes iterációs lépések kiiratásához az optimset függvény
%segítségével a 'Display' paraméter 'iter' - re állítjuk.

options = optimset('Display' , 'iter');
fminbnd(f,-2,2,options)