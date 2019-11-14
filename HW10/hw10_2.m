clc; clear;

x1n = [ 1  2  3  4  5]
h1n = [-1  2 -5 -1  2]

y1n = cconv(x1n, h1n, 5);
y1n


x2n = [ 1  2  3  4  5  6]
h2n = [-1  2 -5 -1  2  1]

y2n = cconv(x2n, h2n, 6);
y2n