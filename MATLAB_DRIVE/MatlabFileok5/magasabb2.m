function magasabb
x=2
Sin(Cos([x,1,0,0]))
cos(cos(x))*(-sin(x))
cos(cos(x))*(-cos(x))+(-sin(cos(x)))*(-sin(x))*(-sin(x))
-sin(cos(x))*(-sin(x))*(-cos(x))+cos(cos(x))*sin(x)...
+(-sin(cos(x)))*2*(-sin(x))*(-cos(x))+(-sin(x))^2*(-cos(cos(x))*(-sin(x)))

function res=Mul(A,B)
if (length(A)==1)
    res=A*B;
else
res=[A(1)*B(1),Add(Mul(A(1:end-1),B(2:end)),Mul(A(2:end),B(1:end-1)))];
end

function res=Add(A,B)
res=A+B;


function res=Sin(A)
'sin';
A;
if length(A)>2
    res=[sin(A(1)),Mul(A(2:end),Cos(A(1:end-1)))];
else
    res=[sin(A(1)),A(2)*cos(A(1))];
end

function res=Cos(A)
'cos';
A;
if length(A)>2
    res=[cos(A(1)),Mul(A(2:end),-Sin(A(1:end-1)))];
else
    res=[cos(A(1)),-A(2)*sin(A(1))];
end
