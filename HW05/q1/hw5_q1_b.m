clc;clear all;
x=[1 1 1 1 1 1 1 1];
N=length(x);
n=0:N-1;
OM=-4*pi:0.001:4*pi
X=exp(-j*OM'*n)*x';

plot(OM,abs(X));title('magnitude X2')
figure();
plot(OM,angle(X));title('phase X2')