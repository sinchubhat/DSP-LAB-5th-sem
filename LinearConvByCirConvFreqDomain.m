clc;
clear all;
close all;
x=input(' Enter the first sequence ');
n1=input(' Enter the index of first sequence ');
h=input(' Enter the impulse response of the system ');
n2=input(' Enter the index of impulse response ');
ny=[n1(1)+n2(1):n1(length(x))+n2(length(h))];
% Circular Convolution order is N
N=length(x)+length(h)-1;
x=[x zeros(1,N-length(x))];
h=[h zeros(1,N-length(h))];
y=ifft(fft(x,N).*fft(h,N)); % circular convolution by DFT and IDFT
disp(' output sequence of linear convolution ');
disp(y); % To view output in command window
disp(ny);
pause;
stem(ny,y); % Plotting linear convolution
grid minor;
xlabel(' Time index ');
ylabel(' Amplitude ');
title(' Linear convolution sequence of x and h ');
