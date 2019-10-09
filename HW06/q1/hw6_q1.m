% Question 1: frequency response of y[n]
clc; clear;
x = [1 0 4 4 4 8];
N = length(x);
n = 0:N-1;
OM1 = -pi:0.0001:pi;
OM2 = -2*pi:0.0001:2*pi;
X1 = exp(-1i*OM1'*n)*x';
X2 = exp(-1i*OM2'*n)*x';

subplot(2, 2, 1);
plot(OM1, abs(X1));
title('Magnitude Response (-pi ~ pi)')
xlabel('f')
ylabel('|y(w)|');

subplot(2, 2 ,3);
plot(OM2, abs(X2));
title('(-2pi ~ 2pi)')
xlabel('f')
ylabel('|y(w)|');

subplot(2, 2 ,2);
plot(OM1, angle(X1));
title('Phase Response (-pi ~ pi)')
xlabel('f')
ylabel('angle(y(w))');

subplot(2, 2 ,4);
plot(OM2, angle(X2));
title('(-2pi ~ 2pi)')
xlabel('f')
ylabel('angle(y(w))');