
x1 = -3:0.01:3;
x2 = x1;
[x1, x2] = meshgrid(x1,x2); % racsot definialunk

f = 4*x1.^2-2.1*x1.^4+1/3*x1.^6+x1.*x2-4*x2.^2+4*x2.^4; % hatpupu tevehat fuggveny

contour(x1,x2,f) % Kirajzolunk nehany szintvonalt
