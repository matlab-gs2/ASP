clear all; close all; clc;

load filter01;

[xx, fs] = wavread('bak_LPn300_16k.wav');
wavplay(xx, fs);
pause(0.5);
yy1 = conv(xx, [1, -1]);
wavplay(yy1, fs);
pause(0.5);
wavplay(conv(xx, HPF500_16k), fs);
pause(0.5);
wavplay(conv(xx, HPF1k_16k), fs);

return;