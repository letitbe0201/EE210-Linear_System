clc; clear;

f=-40:0.0001:40;
xf = 4*exp(-1i*(1/10)*pi*f);

plot(f, abs(xf))
figure;
plot(f, angle(xf));