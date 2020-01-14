clc;
clear all;
close all;
x=input(' Enter the first sequence ');
nx=input(' Enter the index of first sequence ');
h=input(' Enter the impulse response of the system ');
nh=input(' Enter the index of impulse response ');
% Circular Convolution order is N
N=length(x)+length(h)-1;
x=[x zeros(1,N-length(x))];
h=[h zeros(1,N-length(h))];
ny=min(nx)+min(nh):max(nx)+max(nh);
y=cconv(x,h,N); % circular convolution 
disp(' output sequence of linear convolution ');
disp(y); % To view output in command window
disp(ny);
pause;
stem(ny,y); % Plotting linear convolution
grid minor;
xlabel(' Time index ');
ylabel(' Amplitude ');
title(' Linear convolution of sequence of x and h ');

