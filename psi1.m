function res=psi1(x)
       for n = 1 : length(x)
        if x(n) < 3 && x(n) > 2
            res(n) = (2 - x(n)) * (3 - x(n));
        else 
            res(n) = 0;
        end
    
    end
end