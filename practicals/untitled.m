
h = 0.1 ;
tau = 0.01;

x = 0 : h : 3;

t = 0 : tau : 1;

M = length(t);
N = length(x);

u = zeros([N, M]);

% edge conditions
for m = 1 : M
    u(1, m) = sin(6 * pi * t(m));
    u(N, m) = 0;
end



for n = 1 : N
    u(n, 1) = x(n) * (3 - x(n));
end


for m = 1 : M - 1
    for n = 2 : N - 1
        u(n, m + 1) = u(n, m) + tau / h^2 * (u(n + 1, m) - 2 * u(n, m) + u(n - 1, m));
    end
end

for m = 1 : M
    plot(x, u(:, m))
    axis([0, 3, -3, 3])
    MM(m) = getframe;
end

movie(MM, 3)