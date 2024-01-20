# L1Z1D

# ty' = y + t*exp(y/t), y(1) = 0
# y' = y/t + exp(y/t)

clear;
clc;

[T, Y] = ode45(@(t,y) y/t + exp(y/t), [1, 2], 0);
plot(T, Y);
