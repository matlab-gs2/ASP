clearvars; close all; clc;

[xx, fs] = audioread('signal_01.wav');
plot(xx);
axis([0 50 -1 1]);
%soundsc(xx, fs);

N = 1024;
xx0 = xx(1:N);
xx1 = xx0 .* hann(N);
xx2 = [xx1; zeros(N,1)];
XX = fft(xx2);
XXamp = abs(XX(1:N+1));
XXamp = XXamp/max(XXamp);
ff = (0:N) * (fs/(2*N));
plot(ff, XXamp);
grid on;

t = (1:fs) / fs;
yy = sin(2*pi*500*t) + 0.33 * sin(2*pi*1500*t) + 0.2 * sin(2*pi*2500*t) + 0.14 * sin(2*pi*3500*t)
plot(yy);
axis([0 50 -1 1]);
soundsc(yy, fs);

return;