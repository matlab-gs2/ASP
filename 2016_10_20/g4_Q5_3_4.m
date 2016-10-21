clear all; close all; clc;

fs = 48000;
t = (1:fs/2)/fs;
C = 2*pi*261.6*t;

do = sin(C);
re = sin(C * 2^(2/12));
mi = sin(C * 2^(4/12));
fa = sin(C * 2^(5/12));
so = sin(C * 2^(7/12));
ra = sin(C * 2^(9/12));
si = sin(C * 2^(11/12));
do2 = sin(C * 2);

z = zeros(1, fs*0.5);
zpause = zeros(1, fs*0.01);

wavplay([so, mi, mi, z, fa, re, re, z, do, re, mi, fa, so, zpause, so, zpause, so], fs);

return;