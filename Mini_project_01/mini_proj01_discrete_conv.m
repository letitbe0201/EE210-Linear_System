clc; clear;

% Configure input
x = 1:5;
xn = x;
h = 1:10;
hn = h;
len_x = length(x);
len_h = length(h);
% Output y
len_y = len_x + len_h;
y = zeros(1, len_y-1);
% Adding zeros to x and tmp for looping substitution
x = [x zeros(1, len_h-1)];
tmp = zeros(1, len_h);

% Looping convolution of x and h
for i = 0 : len_y-2
    % Keep shifting tmp to the right with input x (as illustrated in class)
    tmp = [x(i + 1) tmp(1 : end-1)];
    % y_tmp equals to x_tmp matrix times h matrix
    y_tmp = tmp * h';
    y(i + 1) = y_tmp;
end

conv_result = y;
% Built-in convolution function
built_in_conv_result = conv(xn,hn);
% Built-in filter function
built_in_filt_result = filter(hn, 1, xn);

l1=1:14;
l2=1:5;
plot(l1, conv_result, 'o', l2, built_in_filt_result, '*')
xlabel('n')
ylabel('y[n]')
title('Convolution (o) / Filter (*)');
%subplot(2, 1, 1)
%stem(y(l1));
%subplot(2, 1, 2)
%stem(built_in_filt_result(l2));

xn
hn
conv_result
built_in_conv_result
built_in_filt_result