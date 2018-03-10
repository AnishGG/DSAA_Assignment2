function [result] = denoise(fileName)
original_img = imread(fileName);

fft_red = fft2(original_img(:,:,1));
fft_green = fft2(original_img(:,:,2));
fft_blue = fft2(original_img(:,:,3));

fft_red = fftshift(fft_red);
fft_green = fftshift(fft_green);
fft_blue = fftshift(fft_blue);

rows = size(original_img, 1);
col = size(original_img, 2);

filter = double(ones(rows,col));
b1 = 50;
b2 = 25;

for i=b2:b2:col-2
    filter(:,i-1:i+1) = 0.0;
end

for i=b1:b1:rows-2
    filter(i-1:i+1,1:110) = 0.0;
end

for i=b1:b1:rows-2
    filter(i-1:i+1,140:end) = 0.0;
end

for i=120:10:140
    filter(:,i-1:i+1) = 1.0;
end

filter(99:101,1:119) = 0.0;
filter(99:101,139:end) = 0.0;
filter(1:90,130:132) = 0.0;
filter(110:end,130:132) = 0.0;

filtered_red = fft_red.*filter;

filtered_green = fft_green.*filter;
filtered_blue = fft_blue.*filter;

red = uint8(abs(ifft2(ifftshift(filtered_red))));
green = uint8(abs(ifft2(ifftshift(filtered_green))));
blue = uint8(abs(ifft2(ifftshift(filtered_blue))));

result = cat(3, red, green, blue);
figure, imshow(result);

end