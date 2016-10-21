clear all; close all; clc;

x = 0:pi/20:2*pi;
y = sin(x);
plot(x,y);
hold on;
y2 = 0.5*sin(x * 2);
plot(x, y2, 'r');

return;