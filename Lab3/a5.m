function L = a5(Dn,T, x, y)
    % e=(x:y)
    t = [-300:1:300];
    w = (2*pi)/T;
    L = zeros(size(t));
    
    for b = 1:length(L)
        sum = 0;
        j = 1;
    
        for m = x:y
            sum = sum + Dn(j) * exp(1i.*m.*w.*t(b));
            j = j+1;
        end
    
        L(b) = sum;
    end

    disp(L);
end