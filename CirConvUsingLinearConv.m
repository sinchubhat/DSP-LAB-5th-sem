% Circular convolution using linear convolution
clc;
close all;
clear all;
x=input(' Enter the first sequence ');
nx=input(' Enter the index of first sequence ');
h=input(' Enter the impulse sequence ');
nh=input(' Enter the index of impulse response ');
N=length(x)+length(h)-1;
ny=min(nx)+min(nh):max(nx)+max(nh);
y=conv(x,h);
disp(' Linear convolution of x and h is: ');
disp(y);
m=max(length(x),length(h));
z=N-m;
j=1;
k=1:m;
for i=m+1:N
    if j~=z+1
        y(j)=y(j)+y(i);
    end
    j=j+1;
end
disp(' Circular convolution of x and h is: ');
disp(y(1:m));
subplot(3,1,1);
stem(nx,x);
subplot(3,1,2);
stem(nh,h);
subplot(313);
stem(ny,y);

