clc;clear all;

n1 = linspace(-10, 10, 21);
n=-10: 1: 10;
xn = 5/2*sinc((n1-0.5)/2);

 
stem(n1, xn); title('X[n]');
%plot(n, xn); title('X[n]');