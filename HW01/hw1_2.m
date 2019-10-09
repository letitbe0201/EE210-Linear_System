% Comparing the hand written result to the matlab compiling result of a
% complex number (magnitude and phase value)
clc; clear;

a = 2 + 3j;
b = 2 - 3j;
c = -2 + 3j;
d = -2 - 3j;
e = a * a;
f = b * c;
g = c * d;
h = a + b;
i = b + d;
j = a - b;
k = c - d;

a_polar = (13^0.5)*exp(0.9828j);
b_polar = (13^0.5)*exp(-0.9828j);
c_polar = (13^0.5)*exp(2.1588j);
d_polar = (13^0.5)*exp(4.1244j);
e_polar = (13)*exp(1.9656j);
f_polar = (13)*exp(1.176j);
g_polar = (13)*exp(0j);
h_polar = (4)*exp(0j);
i_polar = (6)*exp(-1.5708j);
j_polar = (6)*exp(1.5708j);
k_polar = (6)*exp(1.5708j);