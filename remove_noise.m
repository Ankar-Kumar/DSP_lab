% this graph plotted in the range 0 to 1,,,,,,,
clc;
clear all;
close all;

fs = 500;
f = 10;
n = [0:1/fs:1]; % o to 1 sec, sampling time Ts=1/Fs
x = sin(2*pi*f*n);
subplot(4,1,1)
plot(n,x);
title('x(n) signal');
y = x + rand(1,length(x));
subplot(4,1,2)
plot(n,y);
title('noise signal');
l=length(y);
nfft=2^nextpow2(l);
z_fft=abs(fft(y,nfft));
freq=fs/2*linspace(0,1,nfft/2+1);
subplot(4,1,3)
plot(freq,z_fft(1:nfft/2+1));
title('fft')
order=5;
wn=[8 12]*2/fs;
[b,a]=butter(order,wn,'bandpass');
filt=filter(b,a,y);
subplot(4,1,4);
plot(n,filt);
title('filtered signal')

