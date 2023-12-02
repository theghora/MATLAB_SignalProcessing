N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
z = Xf.*Xf;
f = [-(N/2)+1:1:(N/2)] * (1/N); 

subplot(211); plot(f,fftshift( abs(z))); grid on;
title('magnitude')
subplot(212); plot(f,fftshift(angle(z))); grid on;
title('angle')

