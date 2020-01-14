% FIR BPF using Kaiser window
clc;
clear all;
close all;
Fs=8000; % Sampling frequency
fn=Fs/2; % Nyquist frequency
delp=10^(0.1/20)-1; % pass band ripple =0.1 dB
dels=10^(-60/20); % stop band ripple = 60 dB
del=min([delp,dels]);
tw=300; % Transition bandwidth
twn=tw/Fs; % normalized transition width
A=60; % stop band attenuation
N=ceil((A-7.95)/(14.36*twn));
% To ensure type-1 (N must be odd)
if(rem(N,2)==0)
    N=N+1
end
if A<=21
    beta=0;
elseif A>21 & A<50
    beta=0.5842*(A-21)^0.4+0.07886*(A-21);
else
    beta=0.1102*(A-8.7);
end
% delf = transition width = 50Hz
% fc1=fc1-delf/2=1k-300/2=850Hz, fc2=fc2+delf/2=2k+300/2=2150Hz
% Normalized cut off frequencies
fc1=850/fn;
fc2=2150/fn;
% band edge frequencies
fc=[fc1 fc2];
% obtain windowed filter coefficients
hn=fir1(N-1,fc,kaiser(N,beta));
%Compute frequency response
[H,f]=freqz(hn,1,512,Fs);
mag=20*log10(abs(H));
plot(f,mag);
grid on;
xlabel(' Frequency(Hz) ');
ylabel(' Magnitude response (dB) ');
title(' Frequency response of BPF using kaiser window ');
% impulse response of the filter
n=0:N-1;
figure;
stem(n,hn);