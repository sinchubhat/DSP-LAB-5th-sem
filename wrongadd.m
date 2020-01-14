clc;
close all;
clear all;
x =[1 2 3 4 5];
n = [0:5];
y = fliplr(x);
m = -fliplr(n);
en = min(min(n),min(m)):max(max(n),max(m));
x1=zeros(1,length(en));
x2=x1;
x1=(find(en>=min(n) && en<=max(n))=x);



