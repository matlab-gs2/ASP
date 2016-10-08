clear all; close all; clc;

xx = [2 4 8 5 1];
sum = 0;
for i = 1:5
    sum = sum + xx(i);
end
ave = sum / 5

return;