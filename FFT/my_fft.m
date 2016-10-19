function [ Y ] = my_fft( X )
%   https://www.mathworks.com/help/matlab/ref/fft.html#buuutyt-6
%   Discrete Fourier Transform of Vector
    n = length(X);
    Y = zeros(1,n);
    for k=1:n
        tmp = zeros(1,n);
        for j=1:n
            tmp(j) = X(j)*exp(-2*1i*pi*(j-1)*(k-1)/n);
        end
        Y(k) = sum(tmp);
    end
end

