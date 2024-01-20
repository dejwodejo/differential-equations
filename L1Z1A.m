# L1Z1_A

# y' = y/t, y(1) = 5

clear;
clc;

[T, Y] = ode45(@(t,y) y/t, [1,3], 5);

plot(T, Y)
