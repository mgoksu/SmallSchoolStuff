function [ Y ] = my_fft( X )
%   https://www.mathworks.com/help/matlab/ref/fft.html#buuutyt-6
%   Discrete Fourier Transform of Vector
    n = length(X);
    Y = zeros(1,n);
    c = -2*1i*pi;
    for k=1:n
        summation = 0;
        for j=1:n
            summation = summation + X(j)*exp(c*(j-1)*(k-1)/n);
        end
        Y(k) = summation;
    end
end

