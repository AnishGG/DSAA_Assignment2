function decoder(Fs, fft_A, seq, len)
fft_B = fft_A;
l = len;
for i = 1 : 8
    fft_B((i - 1)*l/8 + 1:i*l/8) = fft_A((seq(i) - 1)*l/8 + 1: seq(i) * l/8);
end

new_sound = ifft(fft_B);
sound(real(new_sound), Fs);
end