% sampling theorem verification for a single tone signal
close all;clc;clear;
t=-1:0.001:1;
% fm must be less than 64
% case_1 : fs>2fm (hence consider fm1<32)
fm1=input('enter the frequency of continous time signal=');
x=cos(2*pi*fm1*t); % continuous time signal
subplot(311);
plot(t,x);
title('continous time signal');
fs=64;n=0:63;
xn1=cos(2*pi*n*fm1/fs);
xm1=abs(fft(xn1,length(n)));
subplot(312)
stem(n,xn1); % To observe the samples of discrete signal
hold on;
plot(n,xn1);
title('sampling frequency greater than nquist rate')
subplot(313);
stem(n,xm1)
title('dft of signal sampled at greater than nyquiest rate');

% Case_2 : fs=2fm (hence consider fm2=32)
fm2=input('enter the frequency of continous time signal=');
x=cos(2*pi*fm2*t); % continuous time signal
figure;
subplot(311);
plot(t,x);
title('continuous time signal');
xn2=cos(2*pi*n*fm2/fs);
xm2=abs(fft(xn2,length(n)));
subplot(312)
stem(n,xn2); % To observe the samples of discrete signal
title('dft of signal sampled at nquist rate')
subplot(313);
stem(n,xm2)
title('dft of signal sampled at nquist rate');

% Case_3 : fs<2fm (hence consider fm3>32)
fm3=input('enter the frequency of continous time signal=');
x=cos(2*pi*fm3*t); % continuous time signal
figure;
subplot(311);
plot(t,x);
title('continous time signal')
xn3=cos(2*pi*n*fm3/fs);
xm3=abs(fft(xn3,length(n)));
subplot(312)
stem(n,xn3); % to observe the samples of discrete signal
title('sampling frequency less than nyquist rate')
subplot(313);
stem(n,xm3)
title('dft of the signal sampled at less than nyquist rate');

