% C.1
u = @(t) 1.0.*(t>=0);
f = @(t) exp(-2*t).*cos(4*pi*t);
g = @(t) f(t).*u(t);
t = (-2:0.01:2);

figure(1);

subplot(3, 1, 1);
plot(t,g(2*t+1));
xlabel('t');
ylabel('g(2t+1)');
grid;

subplot(3, 1, 2);
plot(t,g(t+1));
xlabel('t');
ylabel('g(t+1)');
grid;

subplot(3, 1, 3);
plot(t,g(2*t+1)+g(t+1));
xlabel('t');
ylabel('h(t)');
grid;

% C.2
t = -2:0.01:4;
figure(2)
plot(t,g(t+1));
xlabel('t'); ylabel('s(t)'); grid;
title('s(t) = g(t+1)');


% C.3
b=[1 3 5 7];
figure(3)
t= (0:0.01:4);
hold on;
matrix_size = zeros(length(b),length(t));
for i = 1:4
a=b(i);
sa = @(t) exp(-2).*exp(-a.*t).*cos(4*pi*t).*u(t);
plot(t,sa(t));
end
size_matrix = size(matrix_size);
xlabel('t'); ylabel('sa(t)');grid;
title('sa vs. t')
disp(size_matrix);