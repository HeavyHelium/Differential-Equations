N = 25;
xx = 0 : 0.01 : 6;

for k = 1 : N
    yy = phi1(xx) .* sin(k * pi * xx / 6);
    A(k) = trapz(xx, yy) / 3; 
    yy= psi1(xx) .* sin(k * pi * xx / 6);
    B(k) = trapz(xx, yy) * 2 / (k * pi);
end

t = 0 : 0.1 : 12;
x = 0 : 0.005 : 6;

for n = 1 : length(t)
    u = 0;
    for k = 1 : N
        u = u + (A(k) * cos(k * pi * t(n) /6) + B(k) * sin(k * pi * t(n) / 6))  * sin(k * pi * x / 6);
    end
    plot(x, u)
    axis([0, 6, -0.5, 0.5])
    M(n) = getframe;
end

movie(M, 3)
