% Fourier transform of 'sinusoid multiplication'
syms t f
%t = -pi:0.01:pi;
x = 2*cos(2*pi*5*t);
y = 4*sin(2*pi*5*t);

out = x.*y;

yt = out*exp(-1i*2*pi*f*t);

Y = int(yt, t, -pi, pi);

pretty(Y);
f = -30:0.13:30;
Y = subs(Y, f);

plot(f, abs(double(Y)));