clear all; close all; clc;

[x,fs] = wavread('aiueok_fem1.wav');
Len = length(x);
temp = x(1:fs*2);%fs��1�b�Ԃɂǂꂾ���T���v�����O��������\�����g���Ȃ̂ŁA�����2�b�ɂ���
temp = [temp; zeros(fs/2,1)];
temp = [temp; x(fs*2+1:fs*4)];
wavplay(temp, fs, 'sync');

return;