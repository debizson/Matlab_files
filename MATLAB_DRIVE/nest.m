for i=1:5
    A(i,1)=1;A(1,i)=1;
end
for i = 2:5
    for j = 2:5
        A(i,j) = A(i,j - 1) + A(i - 1,j);
    end
end
A

for k = 1:100
    x = sqrt(k);
    if ((k>10)&(x-floor(x)==0))
        break
    end
end
k

n=10;
k=0;
while k<=10
    x = k/3;
    disp([x x^2 x^3])
    k = k+ 1;
end    