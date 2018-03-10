function X = myFFT(x)
%only works if N = 2^k

N = size(x, 2);
odd_fft = x(1:2:end);
even_fft = x(2:2:end);

if N>=2
    odd_result = myFFT(odd_fft);
    even_result = myFFT(even_fft);
    X = zeros(N,1);
    Exp = exp(-1i*2*pi*((0:N/2-1)')/N);
    tmp = Exp .* even_result;
    X = [(odd_result + tmp);(odd_result -tmp)];
else
    if N == 1
        X = x;
    else
        error('N not correct.');
    end
end
