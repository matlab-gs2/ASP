clear all; close all; clc

[x,fs] = wavread('aiueok_fem1.wav');
figure(1);
plot(x);
temp = x(5001:25000);
%playblocking(audioplayer(temp, fs));
eee = x(20500:24000);
wavplay(eee, fs, 'sync');

return;