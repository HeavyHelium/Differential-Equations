function res=harmOSC(t, y)
    res = [y(2); -9 * y(1) - 0.5 * y(2) + sin(3 * t)]
end