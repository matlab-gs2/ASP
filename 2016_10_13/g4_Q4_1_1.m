clear all; close all; clc;

[xx,fs] = wavread('aiueok_fem1.wav');
Len = length(xx)%�f�[�^�̒���
disp(Len * (1/fs));%�f�[�^�̕b���\��
disp(xx(1:50));%�����ŕ\��
wavplay(xx,fs,'sync');%�Đ�

return;