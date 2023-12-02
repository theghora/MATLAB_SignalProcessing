figure(1)
N = 100; PulseWidth = 5;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
f = [-(N/2)+1:1:(N/2)] * (1/N); 
z = Xf.*Xf;

subplot(211); plot(f,fftshift( abs(z))); grid on;
title('magnitude')
subplot(212); plot(f,fftshift(angle(z))); grid on;
title('angle')

% --------------------------------------------------------------------


figure(2)
N = 100; PulseWidth = 25;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
f = [-(N/2)+1:1:(N/2)] * (1/N); 
z = Xf.*Xf;

subplot(211); plot(f,fftshift( abs(z))); grid on;
title('magnitude')
subplot(212); plot(f,fftshift(angle(z))); grid on;
title('angle')
