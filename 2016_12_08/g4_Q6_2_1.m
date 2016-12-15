clear all; close all; clc;

[xx, fs] = wavread('wnoise_8k.wav');
zz = zeros(8000,1);
yy = [xx(1:8000), zz];
wavplay(yy, fs);
yy2 = [zz, xx(1:8000)];
wavplay(yy2, fs);

return;