f = @(t) exp(-t);
t = -2:2;
f(t)
figure(2)
plot (t,f(t));
title('A.2');
xlabel('t');ylabel('f(t)');grid;