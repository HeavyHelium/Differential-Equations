m = 45;
t = 0 : 0.01 : 0.8;

xx_a = 1 : 0.01 : 3;
xx_b = 0 : 0.01 : 4;

for k = 1:m
    yy_b = xx_b .* sin(pi * xx_b) .* sin((k * pi / 4) * xx_b);
    b(k) = (-8/(k^2 * pi^2)) * trapz(xx_b, yy_b);
end

for k = 1:m
    yy_a = (abs(xx_a - 2) - 1) .* sin(k * pi * (1 / 4) * xx_a);
    a(k) = -b(k) + (1/2) * trapz(xx_a, yy_a);
end

x = 0 : 0.01 : 4;


for i = 1:length(t)
    u = zeros(size(x)); 
    % calculate partial sum
    for k = 1:m
        u = u + (a(k) * exp(-((k * pi / 4)^2) * t(i)) + b(k)) * sin((k * pi/4) * x);
    end
    plot(x, u);
     axis([0,4,-1,1])
    M(i) = getframe;
end

movie(M, 3);

