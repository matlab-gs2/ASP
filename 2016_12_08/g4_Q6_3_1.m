clear all; close all; clc;

%[xx, fs] = wavread('G_morning_8k.wav');
[xx, fs] = wavread('chirp.wav');
% out1(:,1) = 1 * xx;
% out1(:,2) = 0 * xx;
% out2(:,1) = 0.9 * xx;
% out2(:,2) = 0.4 * xx;
% out3(:,1) = 0.7 * xx;
% out3(:,2) = 0.7 * xx;
% out4(:,1) = 0.4 * xx;
% out4(:,2) = 0.9 * xx;
% out5(:,1) = 0 * xx;
% out5(:,2) = 1 * xx;
% zz = zeros(0.5 * fs, 2);
% wavplay([out1; zz; out2; zz; out3; zz; out4; zz; out5], fs);

while 1
    hoge = input('ì¸óÕÇµÇƒÇ≠ÇæÇ≥Ç¢:Å@');
    switch hoge
        case 0
            return;
        case 1
            out(:,1) = 1 * xx;
            out(:,2) = 0 * xx;
            wavplay(out, fs);
        case 2
            out(:,1) = 0.9 * xx;
            out(:,2) = 0.4 * xx;
            wavplay(out, fs);
        case 3
            out(:,1) = 0.7 * xx;
            out(:,2) = 0.7 * xx;
            wavplay(out, fs);
        case 4
            out(:,1) = 0.4 * xx;
            out(:,2) = 0.9 * xx;
            wavplay(out, fs);
        case 5
            out(:,1) = 0 * xx;
            out(:,2) = 1 * xx;
            wavplay(out, fs);
    end
end

return;