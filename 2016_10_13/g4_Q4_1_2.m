clear all; close all; clc;

[x,fs] = wavread('aiueok_fem1.wav');
figure(1);
plot(x);
xlabel('ƒTƒ“ƒvƒ‹“_”');
ylabel('U•');
figure(2);
Len = length(x);
t = (0:Len-1)/fs;%ŠÔ
plot(t,x');%x‚ğ“]’u
xlabel('ŠÔ');
ylabel('U•');

return;