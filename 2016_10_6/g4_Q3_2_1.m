clear all; close all; clc;

x = -10:10;
y = x.*x;
figure(1);
plot(x,y);
hold on;
plot(x, y + 10, 'r');
legend('x��2��', 'x��2��+10');

return;