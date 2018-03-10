close all;
clearvars;

% Read the Image
imageA = imread('Img1a.png');
% Convert Image to 2-D
imageA = rgb2gray(imageA);
% Take FFT
fftA = fft2(imageA);
fftA = fftshift(fftA);
% Show the FFT image
figure, imshow(uint8(abs(fftA)));
title('Image 1A FFT2-Magnitude');


imageB = imread('Img1b.png');
imageB = rgb2gray(imageB);
fftB = fft2(imageB);
fftB = fftshift(fftB);
figure, imshow(uint8(abs(fftB)));
title('Image 1B FFT2-Magnitude');

imageC = imread('Img2a.png');
imageC = rgb2gray(imageC);
fftC = fft2(imageC);
fftC = fftshift(fftC);
figure, imagesc(abs(fftC)), colormap gray
title('Image 2A FFT2-Magnitude');
figure, imagesc(log(abs(fftC)+1)), colormap gray
title('Image 2A log(FFT2-Magnitude)');

imageD = imread('Img2b.png');
imageD = rgb2gray(imageD);
fftD = fft2(imageD);
fftD = fftshift(fftD);
figure, imagesc(abs(fftD)), colormap gray
title('Image 2B FFT2-Magnitude');
figure, imagesc(log(abs(fftD)+1)), colormap gray
title('Image 2B log(FFT2-Magnitude)');

denoise('Img3.png');