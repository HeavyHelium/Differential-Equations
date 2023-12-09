[t, x] = ode45(@sys1, [0, 3], [-5, 5.5]);


for n = 1 : length(x)
    plot(x(1 : n, 1), x(1 : n, 2))
    hold on
    plot(x(n, 1), x(n, 2), 'o')
    axis([-20, 20, -20, 20])
    M(n) = getframe;
    hold off
end

movie(M, 3)