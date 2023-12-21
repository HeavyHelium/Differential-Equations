t = 0 : 0.1 : 10;
x = 0 : 0.1 : 9;


for n = 1 : length(t)
    u = (phi0(x - t(n)) + phi0(x + t(n))) / 2 + (1 / 2) * intpsi(x - t(n), x + t(n));
    plot(x, u)
    axis([0, 9, -3, 3])
    M(n) = getframe;

end
movie(M, 3)



