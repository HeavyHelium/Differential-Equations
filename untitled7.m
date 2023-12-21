t = 0 : 0.1 : 18;
x = 0 : 0.1 : 9;


for n = 1 : length(t)
    u = (phi1(x - t(n)) + phi1(x + t(n))) / 2 + (1 / 2) * intpsi1(x - t(n), x + t(n));
    plot(x, u)
    axis([0, 9, -3, 3])
    M(n) = getframe;

end
movie(M, 3)


