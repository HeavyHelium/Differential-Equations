function res=psi1(x)
    
    for k=1 : length(x)
        if x(k) >= 0 && x(k) <= 9
            res(k) = psi0(x(k));
        elseif x(k) < 0 
            res(k) = -psi1(-x(k));
        else
            res(k) = -psi1(18 - x(k));
        end 
    end
end