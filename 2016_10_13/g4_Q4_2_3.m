%‚±‚±‚©‚çæ‚Ímatlab2016b‚ğg—p‚µ‚Äs‚Á‚½

clear all; close all; clc;

figure(1);
[x,fs] = wavread('aiueok_fem1.wav');
plot(x);
grid on;

figure(2);
subplot(5,1,1);
a = x(9000:12500);
plot(a);

subplot(5,1,2);
i = x(13000:16000);
plot(i);

subplot(5,1,3);
u = x(17000:20000);
plot(u);

subplot(5,1,4);
e = x(20500:24000);
plot(e);

subplot(5,1,5);
o = x(24500:27000);
plot(o);

return;