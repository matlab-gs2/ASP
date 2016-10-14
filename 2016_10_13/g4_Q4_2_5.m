clear all; close all; clc

[x,fs] = wavread('aiueok_fem1.wav');
figure(1);
plot(x);
%playblocking(audioplayer(x, fs));

aaa = x(9000:12500);
iii = x(13000:16000);
uuu = x(17000:20000);
eee = x(20500:24000);
ooo = x(24500:27000);
kaa = x(33000:36000);

out = [aaa; kaa; iii; kaa; ooo];
wavplay(out, fs, 'sync');

return;