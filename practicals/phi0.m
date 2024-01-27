function res=phi0(x)

    for k=1 : length(x)
        if x(k) >= 3 && x(k) <= 4
            res(k) = sin(pi * x(k))^2;
        else 
            res(k) = 0;
        end 
    end

end 