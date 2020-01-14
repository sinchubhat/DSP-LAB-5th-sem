% Assignment1 page20
clc;
clear all;
close all;
% Passband and Stopband edge frequencies
fp=2000;
fs=4000;
%Sampling frequency
Fs=20000;
% Normalising to half the sampling frequency
fn=Fs/2;
% cut off frequency (normalizes to fn)
fc=(fs+fp)/2/fn;
%normalized transition width
tw=abs(fs-fp)/Fs; % holds good for both LPF and HPF
N=ceil(4/tw);
% window N=8pi/2pi*TW
% To ensure type-1 (N must be odd)
if(rem(N,2)==0)
    N=N+1;
end
wn=hanning(N); % Hanning window coefficients
% calculate truncated ideal impulse response coefficients
hd=fir1(N-1,fc,boxcar(N));
% to obtain windowed coefficients of LPF
hn=fir1(N-1,fc,wn);
% Frequency response of the filter
[H,f]=freqz(hn,1,512,Fs); % return 512 points for the range Fs/2
mag=20*log10(abs(H));
plot(f,mag);
grid on;
xlabel(' Frequency(Hz) ');
ylabel(' Magnitude response (dB) ');
title(' Frequency response of lPF ');
% impulse response of the filter
n=0:N-1;
figure;
plot(n,hn);
