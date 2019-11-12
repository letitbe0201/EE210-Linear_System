clc; clear;

% (a)
[x,fs] = audioread('jk.wav');
N = length(x);
sound(x, fs);
%figure(1)
%plot(x);
%title('n vs x[n]');

% (b)
fs
length_of_song = 1/fs*length(x);
length_of_song

% (c)
OM = 0:0.001:pi;
n = 0:N-1;
X = exp(-1i*OM'*n)*x;
fq = OM*fs/(2*pi);
%XA = 180*angle(X)/pi;
%figure(2)
%subplot(2, 1, 1)
%plot(OM, abs(X));
%title('\Omega vs |X(\Omega)|')
%subplot(2, 1, 2)
%plot(OM, angle(X));
%title('\Omega vs \angleX(\Omega)')
%figure(3)
%subplot(2, 1, 1)
%plot(fq, abs(X));
%title('f vs |X(\Omega)|')
%subplot(2, 1, 2)
%plot(fq, angle(X));
%title('f vs \angleX(\Omega)')

% (d)
%figure(4)
%plot(fq, abs(X));

% (e)(f)
z = exp(1i*OM);
N = 1;
D = 0.99;
noise_1_phase = 1i*(800/22050)*pi;
noise_2_phase = 1i*(1800/22050)*pi;
NN = (z-N*exp(noise_1_phase)).*(z-N*exp(-noise_1_phase)).*(z-N*exp(noise_2_phase)).*(z-N*exp(-noise_2_phase));
DD = (z-D*exp(noise_1_phase)).*(z-D*exp(-noise_1_phase)).*(z-D*exp(noise_2_phase)).*(z-D*exp(-noise_2_phase));
H = NN./DD;
H = H./abs(max(H));

% (g)
syms zz;
NNN = (zz-N*exp(noise_1_phase)).*(zz-N*exp(-noise_1_phase)).*(zz-N*exp(noise_2_phase)).*(zz-N*exp(-noise_2_phase));
DDD = (zz-D*exp(noise_1_phase)).*(zz-D*exp(-noise_1_phase)).*(zz-D*exp(noise_2_phase)).*(zz-D*exp(-noise_2_phase));
N1 = expand(NNN);
D1 = expand(DDD);
N2 = coeffs(N1);
D2 = coeffs(D1);
N3 = fliplr(N2);
D3 = fliplr(D2);
N4 = double(N3);
D4 = double(D3);
N4
D4

% (h)
db_H = mag2db(abs(H));
%figure(5)
%subplot(2, 1, 1)
%plot(OM, abs(H));
%title('\Omega vs |H(\Omega)| (Normal scales)')
%subplot(2, 1, 2)
%plot(OM, db_H);
%title('\Omega vs |H(\Omega)| (dB scales)')
%plot(OM, angle(H));

% (i)
%figure(6)
%zplane(N3, D3)
%grid;

% (j)
y = filter(N4, D4, x);
Y = exp(-1i*OM'*n)*y;

% (k)
sound(y, fs);

% (l)
%figure(7)
%subplot(2, 1, 1)
%plot(OM, abs(Y));
%title('Frequency response of y[n]')
%subplot(2, 1, 2);
%plot(OM, angle(Y));



% OVERALL
%%%%%
%figure(10)
%subplot(3, 1, 1)
%plot(fq, abs(X))
%subplot(3, 1, 2)
%plot(fq, abs(H))
%subplot(3, 1, 3)
%plot(fq, abs(Y));
%%%%%

%wo = 800/22050;
%bw = wo/5;
%[b2 a2] = iirnotch(wo,bw)
%y = filter(b,a,x);

%wo1 = 1800/22050;
%bw1 = wo1/500;
%[b1 a1] = iirnotch(wo1,bw1)
%y = filter(b1,a1,y);

%b = conv(b1,b2);
%a = conv(a1,a2);
%y = filter(b,a,x);

%[h,w] = freqz(b,a,fs);
%plot(w,abs(h));




%Y = exp(-1i*OM'*n)*y;
%plot(fq,abs(Y))
%sound(y,fs);