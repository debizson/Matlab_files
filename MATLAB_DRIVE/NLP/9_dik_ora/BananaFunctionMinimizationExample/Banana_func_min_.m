% a következő példák egy banana nevű függvény különböző 
%  féle minimalizálási, eddig tanult módszerein fisz végig,
%  fminsearch, fminunc, stb., jacobi, Hesse, grad - okkal.
% A példák a matlab help - jében a
%  https://www.mathworks.com/help/releases/R2025a/optim/ug/banana-function-minimization.html
%  található


% Optimization Without Derivatives




fun = @(x)(100*(x(2) - x(1)^2)^2 + (1 - x(1))^2);
options = optimset('OutputFcn',@bananaout,'Display','off');
x0 = [-1.9,2];
[x,fval,eflag,output] = fminsearch(fun,x0,options);
title 'Rosenbrock solution via fminsearch'

Fcount = output.funcCount;
disp(['Number of function evaluations for fminsearch was ',num2str(Fcount)])

disp(['Number of solver iterations for fminsearch was ',num2str(output.iterations)])


% Optimization with Estimated Derivatives




options = optimoptions('fminunc','Display','off',...
    'OutputFcn',@bananaout,'Algorithm','quasi-newton');
[x,fval,eflag,output] = fminunc(fun,x0,options);
title 'Rosenbrock solution via fminunc'


%Fcount = output.funcCount;
disp(['Number of function evaluations for fminunc was ',num2str(Fcount)])

%Number of function evaluations for fminunc was 150

disp(['Number of solver iterations for fminunc was ',num2str(output.iterations)])

%Number of solver iterations for fminunc was 34



%Optimization with Steepest Descent





% Legmeredekebb lejtő keresés (steepest)


options = optimoptions(options,'HessUpdate','steepdesc',...
    'MaxFunctionEvaluations',600);
[x,fval,eflag,output] = fminunc(fun,x0,options);
title 'Rosenbrock solution via steepest descent'

Fcount = output.funcCount;
disp(['Number of function evaluations for steepest descent was ',...
    num2str(Fcount)])

%Number of function evaluations for steepest descent was 600

disp(['Number of solver iterations for steepest descent was ',...
    num2str(output.iterations)])

% Number of solver iterations for steepest descent was 45





% stb...
