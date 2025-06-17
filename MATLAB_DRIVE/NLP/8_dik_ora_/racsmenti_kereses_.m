% ez a rácsmenti keresés, adott finomsággal megadott
%  rácspontokban kiértékeli a függvényt és így 
%  határozza meg a minimumát. Egyszerű kiértékelésekkel


% 6.1 feladat optim.pdf
% Közelítsük rácspont kereséssel az alábbi valós függvény minimumát
% a MATLAB használatával a [-5,5]^2 tartományban

% f(x,y) = x^4 + x*y + (1 + y)^2


x  = -5:0.1:5;
y = x;
[x,y] = meshgrid(x,y);
z = x.^4 + x.*y + (1 + y).^2;
min(min(z))