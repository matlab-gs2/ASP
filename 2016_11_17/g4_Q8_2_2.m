clearvars; close all; clc;

[xx0, fs] = audioread('piano_001.wav');
xx = xx0(1: 2 * fs);
yy1 = (xx(1: end - 7) + xx(2: end - 6) + xx(3: end - 5) + xx(4: end - 4) + xx(5: end - 3) + xx(6: end - 2) + xx(7: end - 1) + xx(8: end))/8;
yy2 = (yy1(1: end - 7) + yy1(2: end - 6) + yy1(3: end - 5) + yy1(4: end - 4) + yy1(5: end - 3) + yy1(6: end - 2) + yy1(7: end - 1) + yy1(8: end))/8;
yy3 = (yy2(1: end - 7) + yy2(2: end - 6) + yy2(3: end - 5) + yy2(4: end - 4) + yy2(5: end - 3) + yy2(6: end - 2) + yy2(7: end - 1) + yy2(8: end))/8;
yy4 = (yy3(1: end - 7) + yy3(2: end - 6) + yy3(3: end - 5) + yy3(4: end - 4) + yy3(5: end - 3) + yy3(6: end - 2) + yy3(7: end - 1) + yy3(8: end))/8;
yy5 = (yy4(1: end - 7) + yy4(2: end - 6) + yy4(3: end - 5) + yy4(4: end - 4) + yy4(5: end - 3) + yy4(6: end - 2) + yy4(7: end - 1) + yy4(8: end))/8;
yy6 = (yy5(1: end - 7) + yy5(2: end - 6) + yy5(3: end - 5) + yy5(4: end - 4) + yy5(5: end - 3) + yy5(6: end - 2) + yy5(7: end - 1) + yy5(8: end))/8;
yy7 = (yy6(1: end - 7) + yy6(2: end - 6) + yy6(3: end - 5) + yy6(4: end - 4) + yy6(5: end - 3) + yy6(6: end - 2) + yy6(7: end - 1) + yy6(8: end))/8;
yy8 = (yy7(1: end - 7) + yy7(2: end - 6) + yy7(3: end - 5) + yy7(4: end - 4) + yy7(5: end - 3) + yy7(6: end - 2) + yy7(7: end - 1) + yy7(8: end))/8;
yy9 = (yy8(1: end - 7) + yy8(2: end - 6) + yy8(3: end - 5) + yy8(4: end - 4) + yy8(5: end - 3) + yy8(6: end - 2) + yy8(7: end - 1) + yy8(8: end))/8;
yy10 = (yy9(1: end - 7) + yy9(2: end - 6) + yy9(3: end - 5) + yy9(4: end - 4) + yy9(5: end - 3) + yy9(6: end - 2) + yy9(7: end - 1) + yy9(8: end))/8;
z = zeros(0.5 * fs, 1);
xx = xx/max(abs(xx));
yy1 = yy1/max(abs(yy1));
playblocking(audioplayer([xx; z; yy1], fs));
pause(0.5)
yy10 = yy10/max(abs(yy10));
playblocking(audioplayer([xx; z; yy10], fs));

return;