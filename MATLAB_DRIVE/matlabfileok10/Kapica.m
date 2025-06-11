function Kapica
global p;
for p=1:4
    options = odeset('RelTol',1e-8,'AbsTol',[1e-4 1e-4]);
    
    [T Y]=ode45(@sima_inga,[0 10*pi],[pi-0.01 0],options)
    plot(Y(:,1),Y(:,2),'green');
    hold on;
    
    [T Y]=ode45(@kapica_inga,[0 10*pi],[pi-0.01 0],options)
    plot(Y(:,1),Y(:,2),'red');
    
    waitforbuttonpress;
    hold off;
end

function dy=sima_inga(t,y)
g=9.81;
l=g;
a=1;
b=0.1;

dy = zeros(2,1);
dy(1) = y(2);
dy(2) = -(g/l)*sin(y(1))-b*y(2);

function dy=kapica_inga(t,y)
g=9.81;
l=g;
a=1;
b=0.1;
global p;

dy = zeros(2,1);
dy(1) = y(2);
dy(2) = -(g/l+8*a*p*p*sin(p*t)/l)*sin(y(1))-b*y(2);
