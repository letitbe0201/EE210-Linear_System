clc;clear all;
x=[1 -3 6 -1 5 8];
N=length(x);
n=0:N-1;
OM=-4*pi:0.001:4*pi
X=exp(-j*OM'*n)*x';

plot(OM,abs(X));title('magnitude X1')
figure();
plot(OM,angle(X));title('phase X1')