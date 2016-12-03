clearvars; close all; clc;

fs = 100;
ff = 1;
tt = (1:fs)/fs;
%é¸îgêî1Hz
xx = sin(2 * pi * ff * tt);
plot(xx);
grid on;
hold on;
yy = (xx(2:fs) - xx(1:fs-1)) * fs;
plot(yy/(2*pi), 'r');
hold on;
%2Hz
xx2 = sin(2 * pi * (ff * 2) * tt);
yy2 = (xx2(2:fs) - xx2(1:fs-1)) * fs;
plot(yy2/(2*pi), 'g');
hold on;
%4Hz
xx4 = sin(2 * pi * (ff * 4) * tt);
yy4 = (xx4(2:fs) - xx4(1:fs-1)) * fs;
plot(yy4/(2*pi), 'k');

return;