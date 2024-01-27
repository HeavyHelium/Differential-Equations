
colors = ['k', 'r', 'g'];
H = [0.2, 0.01, 0.001];



for i=1:length(H)
    x = 0 : H(i) : 6;
    y = zeros(size(x));
    y(1) = -0.6;

    for n = 1 : length(x) - 1
       y(n + 1) = y(n) + (x(n)^2 - y(n)^2) * H(i);
    end
    plot(x, y, colors(i));
    hold on;
end