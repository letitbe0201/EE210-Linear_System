clc; clear;

x1 = [-1  2 -3  4 -5  7];
x2 = [ 1  2  3  4  5  6];

% (a) DTFT
N = length(x1);
n = 0:N-1;
OM = 0:0.001:2*pi;
%OM = 2*pi*f/fs;
X1_OM = exp(-1i*OM'*n)*x1';

figure(1);
subplot(2, 1, 1);
plot(OM, abs(X1_OM));
ylabel('|X1(\Omega)|');
xlabel('\Omega (0 ~ 2\pi)');
subplot(2, 1, 2);
plot(OM, angle(X1_OM));
ylabel('\angleX1(\Omega)');
xlabel('\Omega (0 ~ 2\pi)');

% (b) DFS
k = n;
Xk1 = exp(-1i*2*pi*k'*n/N)*x1';
k = linspace(0, 2*pi, N+1);
figure(2)
subplot(2, 1, 1);
stem(k(1:N), abs(Xk1), 'r');
ylabel('|Xk1|');
subplot(2, 1, 2);
stem(k(1:N), angle(Xk1), 'r');
ylabel('\angleXk1');

% (c) comparing a) to b)
figure(3)
subplot(2, 1, 1);
plot(OM, abs(X1_OM));
ylabel('|X1(\Omega)| vs |Xk1|');
xlabel('\Omega (0 ~ 2\pi)');
hold on;
subplot(2, 1, 1);
stem(k(1:N), abs(Xk1), 'r');
hold off;
subplot(2, 1, 2);
plot(OM, angle(X1_OM));
ylabel('\angleX1(\Omega) vs \angleXk1');
xlabel('\Omega (0 ~ 2\pi)');
hold on;
subplot(2, 1, 2);
stem(k(1:N), angle(Xk1), 'r');
hold off;

% (d) DFS [x1 x1 x1]
xx1 = [x1 x1 x1];
NN = length(xx1);
nn = 0:NN-1;
kk = nn;
Xk2 = exp(-1i*2*pi*kk'*nn/NN)*xx1';
kk = linspace(0, 2*pi, NN+1);
figure(4)
subplot(2, 1, 1);
stem(kk(1:NN), abs(Xk2), 'r');
ylabel('|Xk2|');
subplot(2, 1, 2);
stem(kk(1:NN), angle(Xk2), 'r');
ylabel('\angleXk2');

% TEST: DFS[x1] vs DFS[x1 x1 x1]
figure(10)
subplot(2, 1, 1);
stem(k(1:N), abs(Xk1));
ylabel('|Xk1|');
hold on;
subplot(2, 1, 1);
stem(kk(1:NN), abs(Xk2), 'r');
hold off;
subplot(2, 1, 2);
stem(k(1:N), angle(Xk1));
ylabel('\angleXk1');
hold on;
subplot(2, 1, 2);
stem(kk(1:NN), angle(Xk2), 'r');
hold off;

% (e) DFT
k = n;
Xk = exp(-1i*2*pi*k'*n/N)*x1';
k = linspace(0, 2*pi, N+1);
figure(5)
subplot(2, 1, 1);
stem(k(1:N), abs(Xk), 'r');
ylabel('|Xk|');



%%%%%%%% W = [1 1 1 1 1 1; 1 0.5-1i*sqrt(3)/2 -0.5-1i*sqrt(3)/2 -1 -0.5+1i*sqrt(3)/2 0.5+1i*sqrt(3)/2; 1 -0.5-1i*sqrt(3)/2 -0.5+1i*sqrt(3)/2 1 -0.5-1i*sqrt(3)/2 -0.5+1i*sqrt(3)/2; 1 -1 1 -1 1 -1; 1 -0.5+1i*sqrt(3)/2 -0.5-1i*sqrt(3)/2 1 -0.5+1i*sqrt(3)/2 -0.5-1i*sqrt(3)/2; 1 0.5+1i*sqrt(3)/2 -0.5+1i*sqrt(3)/2 -1 -0.5-1i*sqrt(3)/2 0.5-1i*sqrt(3)/2]
subplot(2, 1, 2);
stem(k(1:N), angle(Xk), 'r');
ylabel('\angleXk');