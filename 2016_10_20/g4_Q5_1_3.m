clear all; close all; clc;

fs = 8000;%サンプリング周波数
N = fs;%1秒分の基準
tt1 = (1:N/10)/fs;%0から0.1秒
tt2 = (1:N)/fs;%0から1秒

y500 = sin(2 * pi * 500 * tt1);%500Hz
y1000 = sin(2 * pi * 1000 * tt2);%1000Hz
z = zeros(1, fs);%1秒分のゼロベクトル
out = [y500, z, y500, z, y500, z, y1000];%合成
wavplay(out, fs);%再生
wavwrite(out, fs, 'namae_jihou.wav');%書き出し

return;