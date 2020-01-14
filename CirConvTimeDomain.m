clc;
close all;
clear all;
x=input(' Enter the first sequence ');
h=input(' Enter the second sequence ');
N1=length(x);
N2=length(h);
N=max(N1,N2); % length of sequence
x=[x zeros(1,N-N1)]; % modified first sequence for the length N
h=[h zeros(1,N-N2)]; % modified second sequence for the length N
y=cconv(x,h,N);
% To display and plot circular convolution
n=1:N;
disp(' Output sequence of circular convolution ');
disp(y); % To view output in command window
pause;
stem(n,y); % plotting circular convolution
grid minor;
xlabel(' Time index ');
ylabel(' Amplitude ');
title(' Circular convoluion sequence of x and h ');
