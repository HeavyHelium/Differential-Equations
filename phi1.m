function res=phi1(x)
    
    for k=1 : length(x)
        if x(k) >= 0 && x(k) <= 9
            res(k) = phi0(x(k));
        elseif x(k) < 0 
            res(k) = -phi1(-x(k));
        else
            res(k) = -phi1(18 - x(k));
        end 
    end
end