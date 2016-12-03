clearvars; close all; clc;

[xx, fs] = audioread('Favorite_mono.wav');
yy1 = xx(2:end) - xx(1:end-1);%���������
%���K��---
xx = xx/max(abs(xx));
yy1 = yy1/max(abs(yy1));
%���K���I���---
playblocking(audioplayer(xx, fs));
pause(0.5);
playblocking(audioplayer(yy1, fs));
plot(xx);
grid on;
hold on;
plot(yy1, 'r');

return;