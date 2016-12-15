clear all; close all; clc;

[xx, fs] = wavread('aiueok_fem2.wav');
NN = length(xx);
yy = zeros(NN+fs*2,1);
yy(1:NN) = xx;
yy(fs*0.5:NN + fs*0.5 - 1) = yy(fs*0.5:NN + fs*0.5 - 1) + xx;
yy = yy/max(abs(yy));
wavplay(xx, fs);
wavplay(yy, fs);

return;