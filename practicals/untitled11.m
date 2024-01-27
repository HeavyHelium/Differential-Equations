t = 0 : 0.1 : 18;
x = 0 : 0.1 : 9;


for n = 1 : length(t)
    u = (phi01(x - t(n)) + phi01(x + t(n))) / 2 + (1 / 2) * intpsi01(x - t(n), x + t(n));
    plot(x, u)
    axis([0, 9, -1, 1])
    M(n) = getframe;

end
movie(M, 3)


