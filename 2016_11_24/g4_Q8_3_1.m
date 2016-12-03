clear all; close all; clc;

NN = 512;
bb1 = [1, -1, zeros(1, NN-2)];
BB1 = fft(bb1);
plot(abs(BB1(1:(NN/2)+1)));
hold on;
bb2 = [0.25, 0.25, 0.25, 0.25, zeros(1, NN-4)];
BB2 = fft(bb2);
plot(abs(BB2(1:(NN/2)+1)), 'r');
bb3 = [ones(1,20)/20, zeros(1, NN-20)];
BB3 = fft(bb3);
plot(abs(BB3(1:(NN/2)+1)), 'k');

return;