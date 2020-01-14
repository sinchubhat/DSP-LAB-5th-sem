clc;clear all;close all;
Fs=10000;
fn=Fs/2;
delp=10^(0.01/20)-1;
dels=10^(-40/20);
del=min([delp,dels]);
tw=500;
twn=tw/Fs;
A=40;
N=ceil((A-7.95)/(14.36*twn));
if(rem(N,2)==0)
    N=N+1;
end
if(A<=21)
    beta=0;
elseif(A>21 && A<50)
    beta=0.5842*(A-21)^0.4+0.07886*(A-21);
else
    beta=0.1102*(A-8.7);
end
fc=1200/fn;
hn=fir1(N-1,fc,kaiser(N,beta));
[H,f]=freqz(hn,1512,Fs);
mag=20*log10(abs(H));
plot(f,mag);
grid on;
n=0:N-1;
figure;
plot(n,hn);

