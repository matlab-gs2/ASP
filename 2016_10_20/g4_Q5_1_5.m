clear all; close all; clc;

fs = 8000;
f = 500;
t = (1:fs)/fs;
wavplay(sin(2 * pi * f * t), fs);
wavplay(cos(2 * pi * f * t), fs);
wavplay(sin(2 * pi * f * t - (pi / 4)), fs);
wavplay(sin(2 * pi * f * t - (5 * pi / 4)), fs);

return;