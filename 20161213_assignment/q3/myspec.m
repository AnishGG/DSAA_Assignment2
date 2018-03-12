function myspec(y, wind_size, stride)


step = wind_size - stride;
start_points = 1 : step : length(y) - wind_size;
final = zeros(length(start_points), wind_size);
gauss = gausswin(wind_size);

for i = 1: length(start_points)
    sub_audio = y(start_points(i):start_points(i) + wind_size - 1) .* gauss;
    sub_audio_fft = fft(sub_audio);
    spec = abs(sub_audio_fft);
    final(i, 1:wind_size) = spec;
end

figure, imagesc(log(final(:, 1:wind_size/2)));   colorbar; title('MySpectrogram');
end