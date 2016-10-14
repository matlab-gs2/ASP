clear all; close all; clc;

[xx,fs] = wavread('aiueok_fem1.wav');
Len = length(xx)%データの長さ
disp(Len * (1/fs));%データの秒数表示
disp(xx(1:50));%数字で表示
wavplay(xx,fs,'sync');%再生

return;