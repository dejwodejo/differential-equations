# L1Z1F

# t^2x' + tx + t^2x^2 = 4, x(1) = 1
# x' = 4/(t^2) - x/t - x^2

[T, X] =  ode45(@(t, x) 4/(t^2) - x/t - x^2, [1, 3], 1);
plot(T, X)
