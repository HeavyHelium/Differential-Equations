plot([-12, 12], [0, 0], 'k')
hold on 
plot([0, 0], [-6, 6], 'k')
axis([-12, 12, -6, 6])


[a, b] = ginput(1);



while a >= -12 && a <= 12 && b >= -6 && b <= 6
  [t, x] = ode45(@pend1, [0, 5], [a, b])
  plot(x(:, 1), x(:, 2), 'b')
  hold on 
  [t, x] = ode45(@pend1, [0, -5], [a, b])
  plot(x(:, 1), x(:, 2), 'r')
  [a, b] = ginput(1);
end