clear all; close all; clc;

[x,fs] = wavread('aiueok_fem1.wav');
figure(1);
plot(x);
xlabel('�T���v���_��');
ylabel('�U��');
figure(2);
Len = length(x);
t = (0:Len-1)/fs;%����
plot(t,x');%x��]�u
xlabel('����');
ylabel('�U��');

return;