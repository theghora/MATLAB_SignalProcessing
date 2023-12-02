% W+
figure(1)
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Wplus = fft(x.*exp(1i*(pi/3)*t));
subplot(211); plot(f,fftshift(abs(Wplus))); grid on;
title('magnitude')
subplot(212); plot(f,fftshift(angle(Wplus))); grid on;
title('angle')




% W-
figure(2)
Wminus = fft(x.*exp(-1i*(pi/3)*t));
subplot(211); plot(f,fftshift(abs(Wminus))); grid on;
title('magnitude')
subplot(212); plot(f,fftshift(angle(Wminus))); grid on;
title('angle')



% Wc
figure(3)
Wcos = fft(x.*cos((pi/3)*t));
subplot(211); plot(f,fftshift(abs(Wcos))); grid on;
title('magnitude')
subplot(212); plot(f,fftshift(angle(Wcos))); grid on;
title('angle')