% %1
figure(1)
n=(-5:5);
Dn=zeros(size(n));
Dn = a3(3,-5,5,40);
L = a5(Dn,40,-5,5);
t = [-300:1:300];
plot(t, L)
xlabel('t(s)');
ylabel('x(t)');
title('TDR : -5:5 ');
axis([-300 300 -1 2]);
% 
% %2
figure(2)
n=(-20:20);
Dn=zeros(size(n));
Dn = a3(3,-20,20,40);
L = a5(Dn,40,-20,20);
t = [-300:1:300];
plot(t, L)
xlabel('t(s)');
ylabel('x(t)');
title('TDR : -20:20 ');
axis([-300 300 -1 2]);
% 
% %3
figure (3)
n=(-50:50);
Dn=zeros(size(n));
Dn = a3(3,-50,50,40);
L = a5(Dn,40,-50,50);
t = [-300:1:300];
plot(t, L)
xlabel('t(s)');
ylabel('x(t)');
title('TDR : -50:50 ');
axis([-300 300 -1 2]);

%4
figure(4)
n=(-500:500);
Dn=zeros(size(n));
Dn = a3(3,-500,500,40);
L = a5(Dn,40,-500,500);
t = [-300:1:300];
plot(t,L)
xlabel('t(s)');
ylabel('x(t)');
title('TDR : -500:500 ');
axis([-300 300 -1 2]);
