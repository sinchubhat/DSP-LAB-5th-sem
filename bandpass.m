clc;clear all;close all;
fp1=150;
fp2=250;
tw=50;
Fs=1000;
fn=Fs/2;
fc1=(fp1-(tw/2))/fn;
fc2=(fp2+(tw/2))/fn;
tw=tw/Fs;
N=ceil(6/tw);
if(rem(N,2)==0)
    N=N+1;
end
wn=blackman(N);
hd=fir1(N-1,[fc1 fc2],boxcar(N));
hn=fir1(N-1,[fc1 fc2],wn);
[H,f]=freqz(hn,1,512,Fs);
mag=20*log10(abs(H));
plot(f,mag);grid on;
xlabel('Frequency(Hz)');
ylabel('Magnitude response(dB)');
title('Frequency response of BPF');
n=0:N-1;
figure;
plot(n,hn);