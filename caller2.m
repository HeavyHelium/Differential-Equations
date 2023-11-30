[t, y] = ode45(@harmOSC, [0, 20], [2, 1]);

plot(t, y(:,1))

hold on