clc;clear all;close all
X=input('enter the sequence');
h=length(X);
N=dftmtx(h);
mat=N*X'