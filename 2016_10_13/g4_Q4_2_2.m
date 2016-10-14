clear all; close all; clc;

[x,fs] = wavread('aiueok_fem1.wav');
Len = length(x);
temp = x(1:fs*2);%fsは1秒間にどれだけサンプリングしたかを表す周波数なので、それを2秒にする
temp = [temp; zeros(fs/2,1)];
temp = [temp; x(fs*2+1:fs*4)];
wavplay(temp, fs, 'sync');

return;