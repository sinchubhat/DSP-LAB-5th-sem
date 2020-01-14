n = 0:7;
x = cos(0.5*pi*n);
y=fft(x,8);
stem(y);
