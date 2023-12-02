n3 = @(t) n(t+1/4);
figure(4)
subplot(2, 1, 1);
plot(t,n3(t));
xlabel('t');ylabel('n3(t)');
title('n3(t) = n(t+1/4)');
axis([-1 2 -0.1 1.1]);
n4 = @(t) n3(t/2);
subplot(2, 1, 2);
plot(t,n4(t));
xlabel('t');ylabel('n4(t)');
title('n4(t) = n3(t/2)');
axis([-1 4 -0.1 1.1]);