function KaoszShow2
    x=[2.7717467; -0.11932383];
    [T X] = ode45(@rigid,[0 6*pi], x);
    plot(T,X(:,1));
    hold on;


function dy = rigid(t,y)
%y1 a szog, y2 a szogseb.
dy=zeros(2,1);
dy(1)=y(2); %valtozasa a szognek egyenlo a szogsebesseggel
dy(2)=-sin(y(1))-0.1*y(2)+cos(t);
