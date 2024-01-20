# L1Z1E

# xy' + 2y = x + x^2, y(1) = 2
# y' = 1 + x - 2y/x

clear;
clc;

[X, Y] = ode45(@(x,y) 1 + x - 2*y/x, [1, 3], 2);
plot(X, Y);
