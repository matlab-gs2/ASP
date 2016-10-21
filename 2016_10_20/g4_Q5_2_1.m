clear all; close all; clc;

wnoise = randn(16000, 1);
plot(wnoise);
axis([0 200 -5 5]);

wnoise = wnoise/(max(abs(wnoise)));

fs = 8000;
wavplay(wnoise, fs);

return;