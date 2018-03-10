clearvars;
close all;

sound1 = load('q2.mat');

X = sound1.X;
Fs = sound1.Fs;
myOldfft = fftshift(fft(X));
l = length(myOldfft);
f1 = 66150 + 890;
f2 = 66150 + 1315;
f3 = 66150 - 890;
f4 = 66150 - 1315;
r = 20;

rectangle = zeros(l, 1);
rectangle(f1 - r:f1 + r) = 1;
rectangle(f2 - r:f2 + r) = 1;
rectangle(f3 - r:f3 + r) = 1;
rectangle(f4 - r:f4 + r) = 1;

MyNewfft = myOldfft.*rectangle;

figure;
plot(abs(MyNewfft));
title('FFT after removing noise');

lol_sound = ifft(ifftshift(myOldfft));
sound(lol_sound, Fs);