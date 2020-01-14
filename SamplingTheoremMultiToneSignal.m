% sampling theorem verification for multitone signal
close all;clc;clear all;
t=-1:0.001:1;
% fm must be less than 64
% Case_1 : fs>2fm (hence consider fm1 and fm2 <32 )
fm1=input('enter the frequency of first continuous time signal=');
fm2=input('enter the frequency of second continuous time signal=');
x=cos(2*pi*fm1*t)+cos(2*pi*fm2*t); % continuous time signal
subplot(311);
plot(t,x);
title('continuous time signal')
fs=64;n=0:63;
xn1=cos(2*pi*n*fm1/fs)+cos(2*pi*n*fm2/fs);
xm1=abs(fft(xn1,length(n)));
subplot(312)
stem(n,xn1); % to observe the samples of discrete signal
hold on;
plot(n,xn1);
title('sampling frequency greater than nyquist rate');
subplot(313);
stem(n,xm1);
title('dft of signal sampled at greater than nyquist rate');

% Case_2 : fs=2fm (hence consider fm1<32 and fm2=32)
fm1=input('enter the frequency of first continuous time signal=');
fm2=input('enter the frequency of second continuous time signal=');
x=cos(2*pi*fm1*t)+cos(2*pi*fm2*t); % continuous time signal
figure;
subplot(311);
plot(t,x);
title('continuous time signal')
xn2=cos(2*pi*n*fm1/fs)+cos(2*pi*n*fm2/fs);
xm2=abs(fft(xn2,length(n)));
subplot(312)
stem(n,xn2); % to observe the samples of discrete signal
hold on;
plot(n,xn2);
title('sampling frequency equal to nyquist rate')
subplot(313);
stem(n,xm2)
title('dft of signal sampled at nyquist rate')

% Case_3: fs<2fm ( hence consider both fm1 and fm2 > 32)
fm1=input('enter the frequency of first continuous time signal=');
fm2=input('enter the frequency of second continuous time signal=');
x=cos(2*pi*fm1*t)+cos(2*pi*fm2*t); % continuous time signal
figure;
subplot(311);
plot(t,x);
title('continuous time signal')
xn3=cos(2*pi*n*fm1/fs)+cos(2*pi*n*fm2/fs);
xm3=abs(fft(xn3,length(n)));
subplot(312)
stem(n,xn3); % to observe the samples of discrete signal
hold on;
plot(n,xn3);
title('sampling frequency less then nyquist rate')
subplot(313);
stem(n,xm3)
title('dft of signal sampled at less than nyquist rate');

