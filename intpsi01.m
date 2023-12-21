function res=intpsi01(a, b)

    for k = 1 : length(a)
        if a(k) == b(k)
            res(k) = 0;
        else
            x = a(k) : (b(k) - a(k)) / 1000 : b(k);
            y = psi01(x);
            res(k) = trapz(x, y);
        end
    end
    
end