clearvars; close all; clc;

fs = 8000;

f = 1000;
t = (1:fs)/fs;
xx = sin(2 * pi * f * t) - 1/2 * sin(2*pi*2*f*t) + 1/3*sin(2*pi*3*f*t);
xx = xx/max(abs(xx))*0.8;
xx=xx';
figure(1);
plot(xx);
axis([0 30 -1 1]);
%soundsc(xx, fs);

figure(2);
N = 1000;
xx0 = xx(1:N);
xx1 = xx0 .* hann(N);
xx2 = [xx1; zeros(N, 1)];
XX = fft(xx2);
XXamp = abs(XX(1:N+1));
XXamp = XXamp/max(XXamp);
ff = (0:N) * (fs/(2*N));
plot(ff, XXamp);

return;