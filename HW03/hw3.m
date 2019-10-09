clc; clear;

% Question 4
%f = -5:0.01:5;
%yf = (8.*exp(-j*6*pi*f).*sinc(2*f).*sinc(2*f)) + (4.*exp(-j*12*pi*f).*sinc(2*f).*sinc(f)) + (4.*exp(-j*16*pi*f).*sinc(2*f));

%plot(f, angle(yf));

% Question 1
%f = -20:0.01:20;
%yf = 12.*sinc(3*f).*sinc(f) + 2.*sinc(f).^2.*exp(-1i*4*pi*f) + 6.*sinc(3*f).*sinc(f).*exp(1i*2*pi*f) + sinc(f).^2.*exp(-1i*2*pi*f);

%plot(f, angle(yf));

% Question 2
t1 = 1:0.01:2;
yt1 = 0;

t2 = 2:0.01:3;
yt2 = -(1/4)*t2.^4 + 5*t2.^3 - 36*t2.^2 + 104*t2 - 100;

t3 = 3:0.01:4;
yt3 = (3/2)*t3.^2 - 13*t3 + (113/4);

t4 = 4:0.01:5;
yt4 = (1/4)*t4.^4 - 5*t4.^3 + (75/2)*t4.^2 - 125*t4 + (625/4);

t5 = 5:0.01:6;
yt5 = 0;
plot(t1, yt1, t2, yt2, t3, yt3, t4, yt4, t5, yt5);