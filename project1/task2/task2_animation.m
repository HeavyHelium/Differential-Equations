x0 = 0.1;
y0 = 0.1;
z0 = 0.2;

[T1, R1] = ode45(@rhs, [0, 5], [x0, y0, z0]);

axis([-50, 50, -50, 50, -50, 50]);

for k = 1:length(R1)
    plot3(R1(1:k, 1), R1(1:k, 2), R1(1:k, 3));
    hold on

    plot3([-50,50],[0,0],[0,0],'k');
    plot3([0,0],[-50,50],[0,0],'k');
    plot3([0,0],[0,0],[-50,50],'k');

    M(k) = getframe;
    hold off
end

movie(M, 3);

function res = rhs(t, y)
    res = [1, -1, -1; 1, 1, 0; 3, 0, 1] * y;
end

% demo at matlab online -- local version crashes