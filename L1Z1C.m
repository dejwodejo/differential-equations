# L1Z1C

# txx' = ln(t), x(1) = 1
# x' = ln(t)/tx

[T, X] = ode45(@(t,x) log(t)/t*x, [1, 3], 1);
plot(T, X);
