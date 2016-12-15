clear all; close all; clc;

xx1 = [1:5; 6:10; 11:15; 16:20; 21:25; 26:30];
xx2 = xx1(2, 5)
xx3 = xx1(:, 1)
xx4 = xx1(3:6, 2)
xx5 = xx1(1:4, 3)
xx6 = [xx4; xx5]
xx7 = [xx4, xx5]
xx8 = xx3(2: 5) + xx5
xx9 = [xx1(1, :), xx1(2, :)]
xx10 = [xx1(:, 2), xx1(:,4)]

return;