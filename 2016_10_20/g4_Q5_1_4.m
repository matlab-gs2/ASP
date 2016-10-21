clear all; close all; clc;

fs = 8000;
f = 500;
t = (1:fs)/fs;

for A = [-1, -3, -6, -10, -20, -30]
   disp(A);
   out = sin(2 * pi * f * t);
   amp = nthroot(10^A, 20);
   out2 = amp * sin(2 * pi * f * t);
   z300ms = zeros(1, fs * (3 / 10));
   z1s = zeros(1, fs);
   result = [out, z300ms, out2, z1s];
   wavplay(result, fs);
   plot(out2);
   hold on;
end

return;