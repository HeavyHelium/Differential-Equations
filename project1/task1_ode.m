% task1 project1

colors = ['k', 'r', 'g'];
H = [0.2, 0.01, 0.001];

for k=1:length(H)
    [x, y] = ode45(@func_task1, [0 : H(k) : 6], -0.6);
    plot(x, y, colors(k));
    hold on;
end


xlabel('x');
ylabel('y');
legend('h=0.2', 'h=0.01', 'h=0.001');
title('ODE45(Runge-Kutta) for y'' = x^2 - y^2, y(0) = -0.6');
grid on