% FIR BPF
clc;
clear all;
close all;
% Passband and transition width
fp1=150;
fp2=250;
tw=50;
% saqmpling frequency
Fs=1000;
% normalised to half the sampling frequency
fn=Fs/2;
% cutoff frequency ( normalisede to fn)
fc1=(fp1-(tw/2))/fn;
fc2=(fp2+(tw/2))/fn;
% normalised transition width
tw=tw/Fs;
% stop band attenuation is 60dB choose blackman window
N=ceil(6/tw);
% to ensure type-1 (N must be odd)
if(rem(N,2)==0)
    N=N+1
end
wn=blackman(N);
% calculate truncated ideal impulse response coefficient
hd=fir1(N-1,[fc1 fc2],boxcar(N));
% To obtain windowed coefficients
hn=fir1(N-1,[fc1,fc2],wn);
[H,f]=freqz(hn,1,512,Fs);
mag=20*log10(abs(H));
plot(f,mag);
grid on;
xlabel(' Frequency(Hz) ');
ylabel(' Magnitude response (dB) ');
title(' Frequency response of BPF ');
% impulse response of the filter
n=0:N-1;
figure;
stem(n,hn);
