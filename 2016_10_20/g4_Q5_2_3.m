clear all; close all; clc;

fs = 8000;

nokogiri1 = [];
nokogiri2 = [];
nokogiri3 = [];
for i = 1:40
    nokogiri1 = [nokogiri1, i];
    nokogiri2 = [nokogiri2, i*0.01];
end
for i = 0:256-1
    nokogiri3 = [nokogiri3, nokogiri2];
end

wavplay(nokogiri3, fs);

return;