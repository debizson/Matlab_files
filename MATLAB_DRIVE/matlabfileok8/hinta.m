function hinta;
V1=[0 0 50 0 -1];
V2=[5 0 50 0 -1];


[T,Y]=ode45(@rigid,[0 100],V2);

plot(Y(:,3),Y(:,2));
waitforbuttonpress;
plot(T,sqrt(Y(:,4).^2+Y(:,5).^2));

function dy=rigid(t,y)
dy=zeros(5,1);
dy(1)=-0.05;

dy(2)=y(4);
dy(3)=y(5);

poznagy=[y(1),0];
pozkicsi=[y(2),y(3)];

r2=sum((poznagy-pozkicsi).^2);
%[t,sqrt(2)]
ero=1/r2;

dy(4)=(poznagy(1)-pozkicsi(1))/sqrt(r2)*ero;
dy(5)=(poznagy(2)-pozkicsi(2))/sqrt(r2)*ero;

