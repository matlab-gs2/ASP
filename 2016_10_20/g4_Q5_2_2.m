clear all; close all; clc;

fs = 48000;

out = zeros(1, fs * 2);

for i = 1: 0.4*fs: fs*2
   out(1, i) = 1; 
end
plot(out);
wavplay(out, fs);

return;