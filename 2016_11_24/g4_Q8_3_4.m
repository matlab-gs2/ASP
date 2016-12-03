clear all; close all; clc;

load filter01;

[xx, fs] = wavread('bak_HPn4k_16k.wav');
wavplay(xx, fs);
pause(0.5);
yy2 = conv(xx, ones(1,8)/8);
wavplay(yy2, fs);
pause(0.5)
wavplay(conv(xx, LPF1k_16k), fs);
pause(0.5);
wavplay(conv(xx, LPF4k_16k), fs);

return;