N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
z = Xf.*Xf;
z2 = ifft(z);
plot(z2);grid on;
axis([-10 30 -0.1 12]);