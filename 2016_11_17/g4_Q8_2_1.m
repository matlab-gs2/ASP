clearvars; close all; clc;

fs = 100;
ff = 1;
tt = (1:fs)/fs;
xx = sin(2 * pi * ff * tt);
plot(xx);
grid on;
hold on;
%1Hz
%yy = zeros(1,length(xx));
yy = (xx(1: end - 3) + xx(2: end - 2) + xx(3: end - 1) + xx(4: end)) / 4;
plot(yy, 'r');
hold on;
%10Hz
xx10 = sin(2 * pi * (ff * 10) * tt);
yy10 = (xx10(1: end - 3) + xx10(2: end - 2) + xx10(3: end - 1) + xx10(4: end)) / 4;
plot(yy10, 'g');
%20Hz
xx20 = sin(2 * pi * (ff * 20) * tt);
yy20 = (xx20(1: end - 3) + xx20(2: end - 2) + xx20(3: end - 1) + xx20(4: end)) / 4;
plot(yy20, 'k');

return;