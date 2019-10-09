% Sampling multiple sinusoid signal with a sampling frequency 'fs'

clc; clear;

fs = 60;
f1 = 20;
f2 = 40;
f3 = 290;

cnt = 0;
for OM = -pi:0.005:pi
    tmp = 0;
    for n = 0:20*fs-1
        x1 = cos(2*pi*f1*n/fs);
        x2 = 2*cos(2*pi*f2*n/fs);
        x3 = 3*cos(2*pi*f3*n/fs);
        x = x1*x2 + x3;
        tmp = tmp + x*exp(-1i*OM*n);
    end
    cnt = cnt + 1;
    X(cnt) = tmp;
    Omega(cnt) = OM;
end

f = Omega*fs/(2*pi);
X_abs = abs(X);
plot(f, X_abs)
figure;
plot(f, angle(X));
