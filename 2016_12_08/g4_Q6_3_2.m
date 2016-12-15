clear all; close all; clc;

[xx1, fs] = wavread('sound_101.wav');
[xx2, fs] = wavread('sound_102.wav');
out = [xx1, xx2];
out = out / max(max(abs(out)));
wavplay(out, fs);
[xx3, fs] = wavread('sound_103.wav');
out(:,1) = out(:,1) + xx3;
out(:,2) = out(:,2) + xx3;
out = out / max(max(abs(out)));
wavplay(out, fs);

return;