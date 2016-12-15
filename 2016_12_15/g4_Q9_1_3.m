clear all; close all; clc;

[xx, fs] = wavread('aiueok_fem2.wav');
NN = length(xx);
yy = zeros(NN+fs*2,1);
yy(1:NN) = xx;
d = 0.8;
a = 0.025;
yy(fs*d:NN + fs*d - 1) = yy(fs*d:NN + fs*d - 1) + a*xx;
yy = yy/max(abs(yy));
%wavplay(xx, fs);
%wavplay(yy, fs);
for d = 0:0.05:1
    yy(fs * d + 1: fs * d + NN) = yy(fs * d + 1: fs * d + NN) + xx*0.7^(d/0.05);
end
wavplay(yy, fs);

return;