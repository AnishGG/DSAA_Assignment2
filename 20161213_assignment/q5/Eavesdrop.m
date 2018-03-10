function [ result ] = Eavesdrop( samplefile )
% audioinfo contains a structure whose fields contains information about an audio file
identify_aud = audioinfo(samplefile);
X  = identify_aud.TotalSamples;
Fs = identify_aud.SampleRate;
phoneNumLen = X/Fs;

result = uint64(0);
s0 = fft(audioread('0.ogg'));
s1 = fft(audioread('1.ogg'));
s2 = fft(audioread('2.ogg'));
s3 = fft(audioread('3.ogg'));
s4 = fft(audioread('4.ogg'));
s5 = fft(audioread('5.ogg'));
s6 = fft(audioread('6.ogg'));
s7 = fft(audioread('7.ogg'));
s8 = fft(audioread('8.ogg'));
s9 = fft(audioread('9.ogg'));

array = [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9];
len = 10;

for i = 0 : phoneNumLen - 1
    [part] = audioread(samplefile,[i*identify_aud.SampleRate + 1,(i+1)*identify_aud.SampleRate]);
    max = 0;
    for j = 1:len
        % performing dot product to find the max match of the audio
        temp = dot(fft(part),array(:,j));
        if temp > max
            max = temp;
            pos = j;
        end
    end
    result = result*10 + (pos - 1);
end
end