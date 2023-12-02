f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:2);
f(t)
figure(1);
subplot(2, 1, 1);
plot(t,f(t));
title('Figure 1.46');
xlabel('t');ylabel('f(t)'); grid;
t=(-2:0.01:2);
subplot(2, 1, 2);
plot(t,f(t));
title('Figure 1.47');
xlabel('t');ylabel('f(t)'); grid;