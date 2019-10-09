% Record a piece of voice file and let it pass through the low, high and
% band pass filter. Compare the specturm in time and frequency domain.
clc; clear;
[x, fs] = audioread('EE210_HW1.mp3');
% Designing a FIR filter
h = fir1(200, 1/24);
% Using following Wn
% 1/24
% [1/24 4/24]
% [4/24 8/24]
original = x;
% Applying the filter on original signal
x = filter(h, 1, x);

N = length(x);
OM = 0:0.004:(pi*10/24);
n = 0:N-1;
t = 0:N/(fs*N):(N-1)/fs;
% Filtered signal
X = exp(-j*OM'*n)*x;
% Original signal
X2 = exp(-j*OM'*n)*original;
fq = OM*fs/(2*pi);

sound(original, fs);
pause(15);
sound(x, fs);

% Plot time and frequency responses of each signal
%plot(t, original);
%plot(t, x);
%plot(fq, abs(X2));
plot(fq, abs(X));
% Comparing the original signal to the filtered one
%plot(t, original, t, x, 'r');

% Plot frequncy response of the filter
%freqz(h, 1, 512);
% Plot time response of the filter
%t_fil = 0:(N/fs)/length(h):(N-1)/fs;
%plot(t_fil, h)