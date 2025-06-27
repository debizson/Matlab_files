% A nemlineáris programozás könyv feladataiból a 8.1. feladat

% Adjuk meg az alábbi pontokhoz tartozó regressziós egyenest:
%  (1,3), (3,2), (4,5), (7,9).
% Eredményt ellenőrizzük a MATLAB polyfit függvényével.

% Megoldás:

x = [1; 3; 4; 7];
y = [3; 2; 5; 9];


D1 = sum(y)*sum(x.^2)-sum(x)*x'*y;
D2=length(x)*x'*y-sum(x)*sum(y);
D=length(x)*sum(x.^2)-sum(x)^2;

p = polyfit(x, y, 1) % Linear regression coefficients
