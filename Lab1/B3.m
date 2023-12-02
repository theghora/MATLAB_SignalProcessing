u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);

r = @(t) t.*p(t);
n = @(t) r(t)+r(-t+2);
n1 = @(t) n(t/2);
figure(3);
subplot(2, 1, 1);
plot(t,n1(t));
xlabel('t');ylabel('n1(t)');

title('n1(t) = n(t/2)');
axis([-1 5 -0.1 1.1]);
n2 = @(t) n1(t+1/2);
subplot(2, 1, 2);
plot(t,n2(t));
xlabel('t');ylabel('n2(t)');
title('n2(t) = n1(t+1/2)');
axis([-1 4 -0.1 1.1]);