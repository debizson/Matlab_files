function KaoszShow
x1=0;
x2v=1.85:0.05:2.1;
%x2v=1.9;
for x2 = x2v
    x=[x1 x2];
    [T X] = ode45(@rigid,[0 200], x);
    plot(T,X(:,1));
    hold on;
end


function dy = rigid(t,y)
%y1 a szog, y2 a szogseb.
dy=zeros(2,1);
dy(1)=y(2); %valtozasa a szognek egyenlo a szogsebesseggel
dy(2)=-sin(y(1))-0.1*y(2)+cos(t);
