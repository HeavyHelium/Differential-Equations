
h = 0.1 ;
tau = 0.004;

x = 0 : h : 3;

t = 0 : tau : 3;

M = length(t);
N = length(x);

u = zeros([N, M]);


for m = 1 : M
    u(N, m) = exp(-t(m)) * sin(7 * t(m));
    u(1, m) = 0;
end



for n = 1 : N
    if x(n) > 0 && x(n) <= 1
        u(n, 1) = sin(pi * x(n));
    elseif x(n) < 3 && x(n) > 1
        u(n, 1) = 0;
    else 
         "error";
    end
end

c = tau / h

for m = 2 : M - 1
    for n = 2 : N - 1
        u(n, m + 1) = 2 * (1 - c^2) * u(n, m) + c ^ 2 * (u(n - 1, m) + u(n + 1, m)) - u(n, m - 1);
    end
end

for m = 1 : M
    plot(x, u(:, m))
    axis([0, 3, -100, 100])
    MM(m) = getframe;
end

movie(MM, 2, 3)
