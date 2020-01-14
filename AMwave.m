% Amplitude Modulation
close all;
clc;
clear all;
n=0:127;
% fm and fc must be less than Fs/2=64
% fc>fm
fm=input('Enter the frequency of modulating signal= ');
fc=input(' Enter the frequency of carrier signal= ');
Am=2;
Ac=5;
x1=Am*cos(2*pi*fm*n/128);
subplot(211);
plot(n,x1,'m');
hold on;
x2=Ac*cos(2*pi*fc*n/128);
plot(n,x2,'k');
x=x1.*x2/Ac+x2;
subplot(212)
plot(n,x,'b');
figure;
X=abs(fft(x,128));
stem(n,X);
