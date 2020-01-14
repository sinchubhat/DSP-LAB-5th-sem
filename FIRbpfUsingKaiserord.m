%FIRbpfUsingKaiserordFunction
clc;
clear all;
close all;
Fs=8000; %Sampling Frequency
fn=Fs/2; %Nyquist Frequency
delp=10^(0.1/20)-1; % pass band ripple = 0.1dB
dels=10^(-60/20); % stop band ripple = 60 dB
fc=[850 1000 2000 2150];
mag=[0 1 0];
dev=[dels delp dels];
[N,wn,beta,ftype]=kaiserord(fc,mag,dev,Fs);
% obtain windowed filter coefficients
hn=fir1(N-1,wn,kaiser(N,beta));
% Compute frequency response
[H,f]=freqz(hn,1,512,Fs);
mag=20*log10(abs(H));
plot(f,mag);
grid on;
xlabel(' Frequency(Hz) ');
ylabel(' Magnitude response (dB) ');
title(' Frequency response of BPF using Kaiser window ');
% impulse response of the filter
n=0:N-1;
figure;
plot(n,hn);

