clear all; close all; clc;

[xx, fs] = wavread('aiueok_fem2.wav');
hh = wavread('imp_mid.wav');
yy = conv(xx, hh);
%wavplay(xx, fs);
wavplay(yy, fs);

return;