function check_equal(A)

figure, imshow(A);
title('original image');

A = imresize(A, [256, 256]);
B = fft2(A);
figure, imshow(B);
title('fft images');

A = double(A);
fft_row = zeros(size(A));
fft_col = zeros(size(A));

for i = 1:size(A, 1)
    fft_row(i,:) = myFFT(A(i,:));
end

for i = 1:size(A, 1)
    fft_col(:,i) = myFFT(fft_row(:,i).');
end

figure, imshow(fft_col);
title('new image');
end