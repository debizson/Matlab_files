

x1 = -3:0.01:3;
x2 = x1;
[x1, x2] = meshgrid(x1,x2); % racsot definialunk

 f = 12*x1.^2+6.3*x1.^4+x1.^6-6*x1.*x2+6*x2.^2; % harompupu tevehat fuggveny

contour(x1,x2,f) % Kirajzolunk nehany szintvonalt
