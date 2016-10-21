clear all; close all; clc;

fs = 8000;%�T���v�����O���g��
N = fs;%1�b���̊
tt1 = (1:N/10)/fs;%0����0.1�b
tt2 = (1:N)/fs;%0����1�b

y500 = sin(2 * pi * 500 * tt1);%500Hz
y1000 = sin(2 * pi * 1000 * tt2);%1000Hz
z = zeros(1, fs);%1�b���̃[���x�N�g��
out = [y500, z, y500, z, y500, z, y1000];%����
wavplay(out, fs);%�Đ�
wavwrite(out, fs, 'namae_jihou.wav');%�����o��

return;