clearvars;
close all;
load laughter;
myspec(y, 5, 2);
figure, spectrogram(y, 5, 2), title('In-built Spectrogram');

clearvars;
close all;
load train;
myspec(y, 5, 2);
figure, spectrogram(y, 5, 2), title('In-built Spectrogram');
