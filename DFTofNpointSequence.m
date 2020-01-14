clc;
clear all;
close all;

% input sequence x
x=input(' Type in a N point sequence which is a power of 2 ');
N=length(x); 

% DFT of x 
X=fft(x,N);
% Magnitude of DFT
magX=abs(X);
% Phase angle of DFT
phaX=angle(X);

% To plot magnitude and Phase angle
n=0:N-1;

subplot(3,1,1);
stem(n,x);
title(' Time domain sequence ');
xlabel(' Time index n ');
ylabel(' Magnitude ');

subplot(3,1,2);
k=0:N-1;
stem(k,magX);
title(' Magnitude of the DFT samples ');
xlabel(' Frequency index k ');
ylabel(' Magnitude ');

subplot(3,1,3);
stem(k,phaX);
title(' Phase of DFT samples ');
xlabel(' Frequency index k ');
ylabel(' Phase(radians) ');

% To display on the command window 
disp(' Input sequence ');
disp(x);
disp(' DFT of the sequence ');
disp(X);

% To obtain the time domain sequence 
x1 = ifft(X,N);
disp(x1) % x1 must be equal