w=(-6*pi):(pi/100):(6*pi);
x=1./(1-(0.5*exp(-i*w)));
plot(w,x);
grid on;
figure;
plot(w,abs(x));
grid on;
figure;
plot(w,angle(x));