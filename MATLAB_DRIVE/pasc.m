function P=pasc(n,m)
%Input  - n a sorok száma
%       - m a prímszám
%Output - P a pascal háromszög

for j = 1:n
    P(j,1)=1;P(1,j)=1;
end
for k=2:n
    for j=2:n
        P(k,j)=rem(P(k,j-1),m)+rem(P(k-1,j),m);
    end
end


end