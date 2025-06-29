% Feltételes NLP-feladatok megoldása: az fmincon eljárás

% Az fmincon függvény segítségével feltételes optimalizálási feladatokat
%  oldhatunk meg. Tekintsük az alábbi alakú NLP-feladatot:



% min f(x)

%f.h.  c(x) <= 0
%       ceq(x) = 0
%       Ax <= b
%       Aeqx = beq
%       lb <= x <= ub,

% ahol x,b,beq,lb és ub vektorok, A és Aeq mátrixok c és ceq vektor
% értékű függvények.

% A legegyszerűbb függvényhívás:
%  fmincon(fun,x0,A,b)

% A teljes szintaxis:

% [x, fval, exitflag, output, lambda, grad, hessian] = 
% fmincon(fun, x0, A, b, Aeq, beq, lb, ub,nonlcon,options)

% A tankönyv 121. oldal 8.6.1. Példa. Hívjuk meg az alábbi NLP-feladatra
% az fimcon függvényt.

% min x(1) + x(2) + x(3)


% f.h.   -1 + 0.0025*(x(4) + x(6) <= 0;
%        -1 + 0.0025*(-x(4) + x(5) + x(7)) <= 0;
%        -1 + 0.01*(-x(5) + x(8) <=0;
%        100*x(1) - x(1)*x(6) + 8333.33252*x(4) - 83333.333  <= 0;
%        x(2)*x(4) - x(2)*x(7) - 1250*x(4) + 1250*x(5) <= 0;
%        x(3)*x(5) - x(3)*x(8) - 2500*x(5) + 1250000 <= 0;
%        100 <= x(1) <=10000;
%        1000 <= x(2) <= 10000;
%        1000 <= x(3) <= 10000;
%        10 <= x(4) <= 1000;
%        10 <= x(5) <= 1000;
%        10 <= x(6) <= 1000;
%        10 <= x(7) <= 1000;
%        10 <= x(8) <= 1000;


% Megoldás. Adjuk meg a szükséges bemenő paramétereket a feladathoz.
f = @(x)x(1) + x(2) + x(3); % Objective function
x0 = [rand(1,1)*9900 + 100, rand(1, 1)*9000 + 1000, rand(1, 1)*9000 + 1000, rand(1,5)*990 + 10]; % Initial guess
A = []; % Linear inequality constraints
b = []; 
Aeq = []; % Linear equality constraints
beq = []; 
lb = [100, 1000, 1000, 10, 10, 10, 10, 10]; % Lower bounds
ub = [10000, 10000, 10000, 1000, 1000, 1000, 1000, 1000]; % Upper bounds


% A függvényhívás a parancssorban : 
 [x, fval] = fmincon(f,x0,[],[],[],[],lb,ub,@constraint)