function Auto

x = [2,1];

%(3x^2-2x+5)'=6x-2
Add(Sub(Mul([3,0],Pov(x,2)),Mul([2,0],x)),[5,0])

%(5-3x+x^2)+sin(x)/4

Add(Add(Sub([5,0],Mul([3,0],x)),Pov(x,2)),Div(Sin(x),[4,0]))


function res = Add(A,B)
res=[A(1)+B(1),A(2)+A(2)];

function res = Sub(A,B)
res = [A(1)-B(1),A(2)-B(2)];

function res=Mul(A,B)
res=[A(1)*A(1),A(2)*B(1)+A(1)*B(2)];

function res = Div(A,B)
res=[A(1)/B(1),(A(2)*B(1)-A(1)*B(2))/B(1)^2];

function res=Pov(A,k)
res=[A(1)^k,k*A(1)^(k-1)*A(2)];

function res=Cos(A)
res=[cos(A(1)),-sin(A(1))*A(2)];

function res=Sin(A)
res=[sin(A(1)),cos(A(1))*A(2)];
