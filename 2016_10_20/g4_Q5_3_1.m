clear all; close all; clc

fs = 8000;
t = (1:fs)/fs;
do = sin(2*pi*261.6*t);
%wavplay(do, fs, 'sync');
z = zeros(1,fs*0.5);
do2 = sin(2*pi*(261.6*2)*t);
do3 = sin(2*pi*(261.6*0.5)*t);
y = [do, z, do2, z, do, z, do3, z, do];
wavplay(y, fs, 'sync');

return;