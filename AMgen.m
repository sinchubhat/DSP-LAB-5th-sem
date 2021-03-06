close all;
clc;
clear all;
n=0:127;
fm=input(' Enter the frequency of modulating signal = ');
fc=input(' Enter the frequency of the carrier signal =');
Am=2,Ac=5;
x1=Am*cos(2*pi*fm*n/128);
subplot(211);
plot(n,x1,'m');
comet(n,x1);
hold on;
x2=Ac*cos(2*pi*fc*n/128);
plot(n,x2,'k');
comet(n,x2);
x=x1.*x2/Ac+x2;
subplot(212);
plot(n,x,'b');
comet(n,x);
figure;
X=abs(fft(x,128));
stem(n,X);
comet(n,X);
