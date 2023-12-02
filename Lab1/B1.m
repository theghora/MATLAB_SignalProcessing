u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
t = (-1:0.01:6);
figure(1);
plot(t,p(t));
xlabel('t'); ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);
title('Figure 1.50');