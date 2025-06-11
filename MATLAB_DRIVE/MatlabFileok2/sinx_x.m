function sinx_x

t=0.01:0.01:1;
f1=ones(1,length(t))
Fsinxx=sin(t)./t;
fcosx=cos(t);

plot(t,[f1;Fsinxx;fcosx]);

plot ?
