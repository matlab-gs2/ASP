clear all; close all; clc;

load filter01;

figure(1);
NN = length(HPF500_16k);
BB = fft(HPF500_16k);
fs = 16000;
ff = (0:NN/2) * (fs/NN);
plot(ff, abs(BB(1:NN/2+1)));
hold on;
BB = fft(HPF1k_16k);
plot(ff, abs(BB(1:NN/2+1)), 'r');
figure(2)
BB = fft(LPF1k_16k);
plot(ff, abs(BB(1:NN/2+1)));
hold on;
BB = fft(LPF4k_16k);
plot(ff, abs(BB(1:NN/2+1)), 'r');

[xx, fs] = wavread('bakuon_16k.wav');
yy1 = conv(xx,HPF500_16k);
yy2 = conv(xx,HPF1k_16k);
yy3 = conv(xx,LPF1k_16k);
yy4 = conv(xx,LPF4k_16k);
wavplay(yy1, fs);
pause(0.5);
wavplay(yy2, fs);
pause(0.5);
wavplay(yy3, fs);
pause(0.5);
wavplay(yy4, fs);

return;