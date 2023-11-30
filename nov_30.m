syms y(t) x(t)
eq1 = diff(x, t) == 2 * x + 3 * y;
eq2 = diff(y, t) == 3 * x + 2 * y;

ic1 = x(0) == 1;
ic2 = y(0) == 2;

dsolve(eq1, eq2, ic1, ic2)

