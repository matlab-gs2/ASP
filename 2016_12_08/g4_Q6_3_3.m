clear all; close all; clc;

[xx, fs] = wavread('chirp.wav');
xx = [xx; xx];
LL = length(xx);
AL(1:LL/2, 1) = (1:-1/(LL/2):1/(LL/2));
AL(LL/2+1:LL, 1) = (0:1/(LL/2):1-(1/(LL/2)));
AR = abs(1 - AL);
out1(:, 1) = AL .* xx;
out1(:, 2) = AR .* xx;
wavplay(out1, fs);
cocco = cos(2 * pi * (1/LL) * (1:LL))';
AL = 0.5 + 0.5 * cocco;
AR = 0.5 - 0.5 * cocco;
out2(:,1) = AL .* xx;
out2(:,2) = AR .* xx;
wavplay(out2, fs);

return;