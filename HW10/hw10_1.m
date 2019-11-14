clc; clear;

x1 = [-1  2 -3  4 -5  7];
x2 = [ 1  2  3  4  5  6];

% (a) DTFT
N = length(x1);
n = 0:N-1;
OM = 0:0.001:2*pi;
%OM = 2*pi*f/fs;
X1_OM = exp(-1i*OM'*n)*x1';

%figure(1);
%subplot(2, 1, 1);
%plot(OM, abs(X1_OM));
%ylabel('|X1(\Omega)|');
%xlabel('\Omega (0 ~ 2\pi)');
%subplot(2, 1, 2);
%plot(OM, angle(X1_OM));
%ylabel('\angleX1(\Omega)');
%xlabel('\Omega (0 ~ 2\pi)');

% (b) DFS
k = n;
Xk1 = exp(-1i*2*pi*k'*n/N)*x1';
k = linspace(0, 2*pi, N+1);
%figure(2)
%subplot(2, 1, 1);
%stem(k(1:N), abs(Xk1), 'r');
%ylabel('|Xk1|');
%subplot(2, 1, 2);
%stem(k(1:N), angle(Xk1), 'r');
%ylabel('\angleXk1');

% (c) comparing a) to b)
%figure(3)
%subplot(2, 1, 1);
%plot(OM, abs(X1_OM));
%ylabel('|X1(\Omega)| vs |Xk1|');
%xlabel('\Omega (0 ~ 2\pi)');
%hold on;
%subplot(2, 1, 1);
%stem(k(1:N), abs(Xk1), 'r');
%hold off;
%subplot(2, 1, 2);
%plot(OM, angle(X1_OM));
%ylabel('\angleX1(\Omega) vs \angleXk1');
%xlabel('\Omega (0 ~ 2\pi)');
%hold on;
%subplot(2, 1, 2);
%stem(k(1:N), angle(Xk1), 'r');
%hold off;

% (d) DFS [x1 x1 x1]
xx1 = [x1 x1 x1];
NN = length(xx1);
nn = 0:NN-1;
kk = nn;
Xk2 = exp(-1i*2*pi*kk'*nn/NN)*xx1';
kk = linspace(0, 2*pi, NN+1);
%figure(4)
%subplot(2, 1, 1);
%stem(kk(1:NN), abs(Xk2), 'r');
%ylabel('|Xk2|');
%subplot(2, 1, 2);
%stem(kk(1:NN), angle(Xk2), 'r');
%ylabel('\angleXk2');

% TEST: DFS[x1] vs DFS[x1 x1 x1]
x_test = [1 22 -6 3];            % Original sampled signal
 xx_test = [x_test 0 0 0 0];   % testing sampled signal
N_test = length(x_test);
 NN_test = length(xx_test);
n_test = 0:N_test-1;
 nn_test = 0:NN_test-1;
X_test_OM = exp(-1i*OM'*n_test)*x_test';     % DTFT
k_test = n_test;
 kk_test = nn_test;
Xk_test = exp(-1i*2*pi*k_test'*n_test/N_test)*x_test'; % DFT
 XXk_test = exp(-1i*2*pi*kk_test'*nn_test/NN_test)*xx_test';
k_test = linspace(0, 2*pi, N_test+1);
 kk_test = linspace(0, 2*pi, NN_test+1);
figure(10)
subplot(2, 1, 1); % original sampled Xk_test
stem(k_test(1:N_test), abs(Xk_test), 'r');
ylabel('|X_test_OM_test|');
hold on;          % testing Xk_test
subplot(2, 1, 1);
stem(kk_test(1:NN_test), abs(XXk_test), 'p');
hold off;
hold on;          % original DTFT X_test_OM
subplot(2, 1, 1);
plot(OM, abs(X_test_OM), 'k');
hold off;
subplot(2, 1, 2);
stem(k_test(1:N_test), angle(Xk_test), 'r');
ylabel('\angleXk_test');
hold on;
subplot(2, 1, 2);
stem(kk_test(1:NN_test), angle(XXk_test), 'p');
hold off;
hold on;
subplot(2, 1, 2);
plot(OM, angle(X_test_OM), 'k');
hold off;

% (e) DFT
%k = n;
%Xk = exp(-1i*2*pi*k'*n/N)*x1';
%k = linspace(0, 2*pi, N+1);
%figure(5)
%subplot(2, 1, 1);
%stem(k(1:N), abs(Xk), 'r');
%ylabel('|Xk|');
%subplot(2, 1, 2);
%stem(k(1:N), angle(Xk), 'r');
%ylabel('\angleXk');


%%%%%%%% W = [1 1 1 1 1 1; 1 0.5-1i*sqrt(3)/2 -0.5-1i*sqrt(3)/2 -1 -0.5+1i*sqrt(3)/2 0.5+1i*sqrt(3)/2; 1 -0.5-1i*sqrt(3)/2 -0.5+1i*sqrt(3)/2 1 -0.5-1i*sqrt(3)/2 -0.5+1i*sqrt(3)/2; 1 -1 1 -1 1 -1; 1 -0.5+1i*sqrt(3)/2 -0.5-1i*sqrt(3)/2 1 -0.5+1i*sqrt(3)/2 -0.5-1i*sqrt(3)/2; 1 0.5+1i*sqrt(3)/2 -0.5+1i*sqrt(3)/2 -1 -0.5-1i*sqrt(3)/2 0.5-1i*sqrt(3)/2]