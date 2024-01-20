# L1Z1B

# x' = (1+e^(-x))*sin(t), x(0) = 0

clear;
clc;

[T, X] = ode45(@(t, x) 1 + exp(-x) * sin(t), [0, 2], 0);
plot(T, X);
