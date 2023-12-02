u = @(t) 1.0*(t>=0);

h1 = @(t) exp(t/5).*u(t);
h2 = @(t) 4*exp(-t/5).*u(t);
h3 = @(t) 4*exp(-t).*u(t);
h4 = @(t) 4*(exp(-t/5)-exp(-t)).*u(t);

t=[-1:0.001:5];

plot(t,h1(t));
hold on
plot(t,h2(t));
plot(t,h3(t));
plot(t,h4(t));
hold off;

legend("h1(t)","h2(t)","h3(t)","h4(t)");
xlabel("t");
ylabel("h(t)");
title("changes to h(t) vs. t");
grid;
