clear all; close all; clc;

[xx,fs] = wavread('aiueok_fem1.wav');
Len = length(xx)
temp = xx(1:Len/2);%temp�ϐ��Ƀ[���f�[�^�܂߂ĉ��̃f�[�^��S�ē����
temp = [temp; zeros(fs/2,1)];
temp = [temp;xx(Len/2+1:Len)];
wavplay(temp, fs, 'sync');

return;