
h = 0.01;
x = 0 : h : 10;
y(1) = 7;
y(2) = y(1) + 2 * h + h ^ 2 * (-2 - 10 * y(1)) / 2;

for n = 2 : length(x) - 1
    y(n + 1) = 2 * y(n) - y(n - 1) - h * (y(n) - y(n - 1)) - 10 * h ^ 2 * y(n);

end

plot(x, y)
hold on  


sol = dsolve("D2y = -Dy - 10 * y, y(0) = 7, Dy(0) = 2");
yy = subs(sol, 't', x);
plot(x, yy, 'r')

hold on


[x, y] = ode45(@de2, [0, 8], [7, 2])
plot(x, y(:, 1))

hold on 

[x, y] = ode45(@de2, [0, -3], [7, 2])
plot(x, y(:, 1))