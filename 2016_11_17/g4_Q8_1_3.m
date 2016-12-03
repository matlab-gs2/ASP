clearvars; close all; clc;

[xx0, fs] = audioread('piano_001.wav');
xx = xx0(1: 2 * fs);
yy = xx(2: 2 * fs) - xx(1: 2 * fs - 1);
yy2 = yy(2: 2 * fs -1) - yy(1: 2 * fs - 2);
yy3 = yy2(2: 2 * fs - 2) - yy2(1: 2 * fs - 3);

yy = yy/ max(abs(yy));
yy2 = yy2/ max(abs(yy2));
yy3 = yy3/ max(abs(yy3));

playblocking(audioplayer(yy, fs));
pause(0.5);
playblocking(audioplayer(yy2, fs));
pause(0.5);
playblocking(audioplayer(yy3, fs));

return;