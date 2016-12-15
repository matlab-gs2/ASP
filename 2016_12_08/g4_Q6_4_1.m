clear all; close all; clc;

[xx, fs] = wavread('HOTEL PACIFIC_16k_short_1.wav');
wavplay(xx, fs);
yy = xx(:, 1) - xx(:, 2);
wavplay(yy, fs);

return;