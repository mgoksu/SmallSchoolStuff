function [ X ] = my_ifft( Y )
%   https://www.mathworks.com/help/matlab/ref/fft.html#buuutyt-6
%   Inverse Discrete Fourier Transform of Vector
    n = length(Y);
    X = zeros(1,n);
    for j=1:n
        tmp = zeros(1,n);
        for k=1:n
            tmp(k) = (1/n)*Y(k)*exp(2*1i*pi*(j-1)*(k-1)/n);
        end
        X(j) = sum(tmp);
    end

end

