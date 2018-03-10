clearvars;
close all;

[X,Fs]=audioread('message1.wav');
Y1 = fft(X);
l = length(Y1);
seq = [2, 1, 3, 4, 5, 6, 8, 7];
decoder(Fs, Y1, seq, l);

pause(5);

[X,Fs]=audioread('message2.wav');
Y1 = fft(X);
l = length(Y1);
seq = [4, 3, 2, 1, 8, 7, 6, 5];
decoder(Fs, Y1, seq, l);

pause(5);

[X,Fs]=audioread('message3.wav');
Y1 = fft(X);
l = length(Y1);
seq = [3, 4, 1, 2, 7, 8, 5, 6];
decoder(Fs, Y1, seq, l);