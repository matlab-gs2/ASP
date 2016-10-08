clear all; close all; clc;

x = -10:10;
y = x.*x;
figure(1);
plot(x,y);
hold on;
plot(x, y + 10, 'r');
legend('x‚Ì2æ', 'x‚Ì2æ+10');

return;