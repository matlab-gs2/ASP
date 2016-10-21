clear all; close all; clc;

fs = 8000;
t = (1:fs)/fs;
C = 2*pi*261.6*t;
do = sin(C);
re = sin(C * 2^(2/12));
mi = sin(C * 2^(4/12));
fa = sin(C * 2^(5/12));
so = sin(C * 2^(7/12));
ra = sin(C * 2^(9/12));
si = sin(C * 2^(11/12));
do2 = sin(C * 2);

z = zeros(1, 0); %ƒŠƒYƒ€‚æ‚­‚·‚é‚½‚ß–³Œø‰»

y = do + mi + so;
y = y/max(abs(y)) * 0.99;
wavplay(y, fs, 'sync');

return;