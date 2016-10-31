function [  ] = fftSpecPhasePlot( filename, Fs )
%FFTSPECPLOT frequence vs magnitude plot

S = audioread(filename);
L = size(S,1);   % Length of signal




Y = fft(S);
f = (0:L-1)/L*Fs;
phs = unwrap(angle(Y));
figure;
subplot(2,1,1);
plot(f,phs/pi);
title(filename);
xlabel 'Frequency (Hz)';
ylabel 'Phase / \pi';

%% 
% Define the frequency domain |f|
% On average, longer signals produce better frequency approximations.
f = Fs*(0:(L/2)-1)/L;

Y = abs(Y(1:L/2));      %Discard Half of Points


subplot(2,1,2);
plot(f,Y);
title(filename);
xlabel('Frequency   (Hz)');
ylabel('FFT magnitude');



end

