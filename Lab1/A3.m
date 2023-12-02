g = @(t) exp(-t);
t = -2:2;
g(t)
figure(1);
subplot(2,1,1);
plot (t,g(t));
title('A.2');
xlabel('t');ylabel('g(t)');grid;
hold on
f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:2);
f(t)
figure(2);
subplot(2, 1, 2);
plot(t,f(t));
title('Figure 1.46');
xlabel('t');ylabel('f(t)'); grid;