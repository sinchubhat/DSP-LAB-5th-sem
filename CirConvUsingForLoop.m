% Circular convolution using for loop
clc;
close all;
clear all;
x=input(' Enter the first sequence ');
nx=length(x);
y=input(' Enter the second sequence ');
ny=length(y);
x=[x,zeros(1,(max(nx,ny)-nx))];
y=[y,zeros(1,(max(nx,ny)-ny))];
N=length(x);
w=zeros(1,N);
r=zeros(1,N);
x1=[];
for i=1:N
    sum=0;
    w=[flip(x(1:i)),flip(x(i+1:N))];
    r=w.*y;
    for j=1:N
        sum=sum+r(j);
    end
    x1=[x1,sum];
end

% To display and plot circular convolution
n=1:N;
disp(' Output sequence of circular convolution ');
disp(x1); % To view output in command window
pause;
stem(n,x1); % plotting circular convolution
grid minor;
xlabel(' Time index ');
ylabel(' Amplitude ');
title(' Circular convoluion sequence of x and h ');
