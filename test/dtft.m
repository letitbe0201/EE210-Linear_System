% DTFT of a sampled cos function with a sampling frequency 'fs'

clc; clear;

fs = 50;
n=0:(fs-1);
f=10;
x=cos(2*pi*f*n/fs);
OM=-4*pi:0.01:4*pi;
X=exp(-j*OM'*n)*x';
f=OM*fs/(2*pi);
subplot(2, 1, 1);
plot(n, x);
subplot(2, 1, 2);
plot(f, abs(X));