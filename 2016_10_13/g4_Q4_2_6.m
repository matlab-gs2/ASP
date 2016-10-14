clear all; close all; clc

[x,fs] = wavread('riyoukiyaku01kawamoto.wav');
figure(1);
plot(x);
temp = x(45000:65000);
wavplay(temp(3000:12000), fs, 'sync');
figure(2);
plot(temp);

return;