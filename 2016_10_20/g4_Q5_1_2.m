clear all; close all; clc;

fs = 8000;
t = (1:fs)/fs;
y500 = sin(2*pi*500*t);
plot(t, y500);
axis([0 0.02 -2 2]);
wavplay(y500, fs);
hold on;
y500b = 0.5*sin(2*pi*500*t);
plot(t, y500b, 'r');
wavplay(y500b, fs);
y1000 = sin(2*pi*1000*t);
plot(t, y1000, 'g');
wavplay(y1000, fs);

return;