u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);

r = @(t) t.*p(t);
figure(2)
subplot(2, 1, 1);
plot(t,r(t));
xlabel('t');ylabel('r(t)');
title('r(t) = tp(t)');
axis([-1 2 -0.1 1.1]);
n = @(t) r(t)+r(-t+2);
subplot(2, 1, 2);
plot(t,n(t));
xlabel('t');ylabel('r(t)');
title('n(t) = r(t)+r(-t+2)');
axis([-1 3 -0.1 1.1]);

