A = [1, -1, -1; 1, 1, 0; 3, 0, 1];
eqPoint = [0; 0; 0];
plot3(eqPoint(1), eqPoint(2), eqPoint(3), 'r*');
grid on;
axis([-5, 5, -5, 5, -5, 5]);
hold on;

[T, D] = eig(A);

x = -2 : 2 : 2;
y = -2 : 2 : 2;
z = -2 : 2 : 2;

[X, Y, Z] = meshgrid(x, y, z);


for i=1:length(x)
   for j=1:length(y)
        for k=1:length(z)
            [T1, R1] = ode45(@rhs, [0, 50], [X(i, j, k), ...
                                             Y(i, j, k), ...
                                             Z(i, j, k)]);
            [T2, R2] = ode45(@rhs, [0, -50], [X(i, j, k), ...
                                              Y(i, j, k), ...
                                              Z(i, j, k)]);
            plot3(R1(:, 1), R1(:, 2), R1(:, 3), 'r');
            hold on;
            plot3(R2(:, 1), R2(:, 2), R2(:, 3), 'b');
            hold on;
        end
   end
end



DX = A(1, 1) * X + A(1, 2) * Y + A(1, 3) * Z;
DY = A(2, 1) * X + A(2, 2) * Y + A(2, 3) * Z;
DZ = A(3, 1) * X + A(3, 2) * Y + A(3, 3) * Z;

% нормиране
d = sqrt(DX .^2 + DY.^2 + DZ .^2);
quiver3(X, Y, Z, DX./d, DY./d, DZ./d, 'g');


xlabel('x');
ylabel('y');
ylabel('z');

title('Фазов портрет на системата');


function res=rhs(t, y)
    res = [1, -1, -1; 1, 1, 0; 3, 0, 1] * y;
end

% собствените стойности не са реални; реалните части са положителни
% неустойчив фокус
