% Comparing original signal to filtered sound
clc; clear;
[x,fs] = audioread('mark.wav');
h = fir1(100,[4/8 6/8]);
% assign another signal
xx = x;
x = filter(h,1,x);
%sound(x,fs)
N = length(x);
N2 = length(xx);
OM = 0:0.008:pi;
n = 0:N-1;
n2 = 0:N2-1;
X = exp(-j*OM'*n)*x;
X2 = exp(-j*OM'*n)*xx;
fq = OM*fs/(2*pi);
%plot(fq,abs(X));
plot(fq, abs(X2));
sound(xx,fs)
pause(10);
sound(x,fs)
%plot(n,original,n,x,'r')



