function D = a3(d ,x,y, T)
 w0 = 2*pi/T;
 n=(x:y);
 Dn=zeros(1,length(n));
 u = @(t) 1.*(t>0);
 
 if (d == 1)
     for z = 1:length(n)
        func = @(t) (cos(3*w0*t)+(0.5*cos(w0*t))).*exp(-1i * w0 * n(z) .* t);
        Dn(z) = (1/T)*integral(func, -T/2, T/2);
     end
     disp(Dn)
     D=Dn;

 elseif (d == 2)
     for z = 1:length(n)
        func = @(t) 1.*(u(t+5)-u(t-5)).*exp(-1i * w0 * n(z) * t) ;
        Dn(z) = (1/T)*integral(func, -T/2, T/2);
     end
     disp(Dn)
     D=Dn;

 elseif (d == 3)
     for z = 1:length(n)
        func = @(t) 1.*(u(t+5)-u(t-5)).*exp(-1i * w0 * n(z) * t);
        Dn(z) = (1/T)*integral(func, -T/2, T/2);
     end
     disp(Dn)
     D=Dn;

 else
    error('Set d value as one of these: 1 , 2 , 3');
 end
end
