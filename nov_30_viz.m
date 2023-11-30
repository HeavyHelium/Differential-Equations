[xx, yy] = meshgrid(-8 : 1 : 8);
u = 2 * xx + 3 * yy;
v = 3 * xx + 2 * yy;


quiver(xx, yy, u, v)