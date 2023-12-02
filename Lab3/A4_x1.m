%1
figure(1)
n = (-5:5);
Dn=zeros(1,length(n));
Dn = a3(1,-5,5,20);
Dn_abs = abs(Dn);
Dn_phase = angle(Dn);
subplot(2,1,1);
stem(n, Dn_abs);
xlabel('n');
ylabel('|Dn| of x1' );
title('|Dn| of -5<n<5');
subplot(2,1,2);
stem(n, Dn_phase);
xlabel('n');
ylabel('angle (rads)');
title('angle n of x1');


%2
figure(2)
n = (-20:20);
Dn=zeros(1,length(n));
Dn = a3(1,-20,20,20);
Dn_abs = abs(Dn);
Dn_phase = angle(Dn);
subplot(2,1,1);
stem(n,Dn_abs);
xlabel('n');
ylabel('|Dn|' );
title('|Dn| of -20<n<20');
subplot(2,1,2);
stem(n, Dn_phase);
xlabel('n');
ylabel('angle (rads)');
title('angle n of x1');

%3
n = (-50:50);
Dn=zeros(1,length(n));
Dn = a3(1,-50,50,20);
figure(3)
Dn_abs = abs(Dn);
Dn_phase = angle(Dn);
subplot(2,1,1);
stem(n,Dn_abs);
xlabel('n');
ylabel('|Dn|' );
title('|Dn| of -50<n<50');
subplot(2,1,2);
stem(n, Dn_phase);
xlabel('n');
ylabel('angle (rads)');
title('angle n of x1');


%4
n = (-500:500);
Dn=zeros(1,length(n));
Dn = a3(1,-500,500,20);
figure(4)
Dn_abs = abs(Dn);
Dn_phase = angle(Dn);
subplot(2,1,1);
stem(n,Dn_abs);
xlabel('n');
ylabel('|Dn|' );
title('|Dn| of -500<n<500');
subplot(2,1,2);
stem(n, Dn_phase);
xlabel('n');
ylabel('angle (rads)');
title('angle n of x1');


