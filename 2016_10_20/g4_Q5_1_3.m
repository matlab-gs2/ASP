clear all; close all; clc;

fs = 8000;%ƒTƒ“ƒvƒŠƒ“ƒOü”g”
N = fs;%1•b•ª‚ÌŠî€
tt1 = (1:N/10)/fs;%0‚©‚ç0.1•b
tt2 = (1:N)/fs;%0‚©‚ç1•b

y500 = sin(2 * pi * 500 * tt1);%500Hz
y1000 = sin(2 * pi * 1000 * tt2);%1000Hz
z = zeros(1, fs);%1•b•ª‚Ìƒ[ƒƒxƒNƒgƒ‹
out = [y500, z, y500, z, y500, z, y1000];%‡¬
wavplay(out, fs);%Ä¶
wavwrite(out, fs, 'namae_jihou.wav');%‘‚«o‚µ

return;