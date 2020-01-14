clc;
close all;
clear all;
x=input(' Enter the first sequence ');
h=input(' Enter the second sequence ');
N1=length(x);
N2=length(h);
N=max(N1,N2); % length of sequence
x=[x zeros(1,N-N1)]; % modified first sequence 
h=[h zeros(1,N-N2)]; % modified second sequence 
y=ifft(fft(x,N).*fft(h,N)); % circular convolution by DFT and IDFT
n=1:N;
disp(' output sequence of circular convolution ');
disp(y); % To view output in command window
pause;
stem(n,y); % Plotting circular convolution
grid minor;
xlabel(' Time index ');
ylabel(' Amplitude ');
title(' Circular convolution sequence of x and h ');
