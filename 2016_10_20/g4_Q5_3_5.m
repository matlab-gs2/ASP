clear; close all; clc;

fs = 48000;

N = round(fs * 1.5);%1è¨êﬂÇÃí∑Ç≥
t = (1:fs*10)/fs;%10ïbä‘
C = 2*pi*261.6*t;%äÓèÄÇÃ2ÉŒft

do = sin(C);
dos = sin(C * 2^(1/12));
re = sin(C * 2^(2/12));
res = sin(C * 2^(3/12));
mi = sin(C * 2^(4/12));
fa = sin(C * 2^(5/12));
fas = sin(C * 2^(6/12));
so = sin(C * 2^(7/12));
sos = sin(C * 2^(8/12));
ra = sin(C * 2^(9/12));
ras = sin(C * 2^(10/12));
si = sin(C * 2^(11/12));
do2 = sin(C * 2);
dos2 = sin(C * 2^(13/12));
re2 = sin(C * 2^(14/12));
res2 = sin(C * 2^(15/12));
mi2 = sin(C * 2^(16/12));
fa2 = sin(C * 2^(17/12));
fas2 = sin(C * 2^(18/12));
so2 = sin(C * 2^(19/12));
sos2 = sin(C * 2^(20/12));
ra2 = sin(C * 2^(21/12));
ras2 = sin(C * 2^(22/12));
si2 = sin(C * 2^(23/12));
do3 = sin(C * 2^2);
dos3 = sin(C * 2^(25/12));
re3 = sin(C * 2^(26/12));
res3 = sin(C * 2^(27/12));
mi3 = sin(C * 2^(28/12));
fa3 = sin(C * 2^(29/12));
fas3 = sin(C * 2^(30/12));
so3 = sin(C * 2^(31/12));
sos3 = sin(C * 2^(32/12));
ra3 = sin(C * 2^(33/12));
ras3 = sin(C * 2^(34/12));
si3 = sin(C * 2^(35/12));
do4 = sin(C * 2^3);

result = zeros(1,N * 10);%10è¨êﬂï™ÇÃÉ[ÉççsóÒ

out = [do(1:N*0.05), re(1:N*0.05), mi(1:N*0.05), fa(1:N*0.05), so(1:N), fa(1:N*0.03), mi(1:N*0.03), re(1:N*0.5), do(1:N*0.05), mi(1:N*0.45), re(1:N*0.05), do(1:N*0.94)];
out2 = [do2(1:N*0.05), re2(1:N*0.05), mi2(1:N*0.05), fa2(1:N*0.05), so2(1:N), fa2(1:N*0.03), mi2(1:N*0.03), re2(1:N*0.5), do2(1:N*0.05), mi2(1:N*0.45), re2(1:N*0.05), do2(1:N*0.94)];
out3 = [do3(1:N*0.05), re3(1:N*0.05), mi3(1:N*0.05), fa3(1:N*0.05), so3(1:N), fa3(1:N*0.03), mi3(1:N*0.03), re3(1:N*0.5), do3(1:N*0.05), mi3(1:N*0.25), so3(1:N*0.25), do4(1:N*0.94)];
result(1: N*3.25) = out;
result(N*2+1:(N*2)+N*3.25) = result(N*2+1:(N*2)+N*3.25) + out2;
result(N*4+1:(N*4)+N*3.25) = result(N*4+1:(N*4)+N*3.25) + out3;

result = result/max(abs(result)) * 0.99;

wavplay(result, fs);
wavwrite(result, fs, 'enso.wav');

return;