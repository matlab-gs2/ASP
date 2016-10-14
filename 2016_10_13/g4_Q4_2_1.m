clear all; close all; clc;

[xx,fs] = wavread('aiueok_fem1.wav');
Len = length(xx)
temp = xx(1:Len/2);%temp変数にゼロデータ含めて音のデータを全て入れる
temp = [temp; zeros(fs/2,1)];
temp = [temp;xx(Len/2+1:Len)];
wavplay(temp, fs, 'sync');

return;