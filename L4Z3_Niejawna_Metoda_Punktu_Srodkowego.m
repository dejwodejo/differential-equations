# L4Z3 Niejawna Metoda Punktu Œrodkowego

# y(n+1) = y(n) + h * f(t(n) + 1/2 * h, 1/2 * (y(n) + y(n+1)))
# y(n+1) - y(n) - h * f(t(n) + 1/2 * h, 1/2 * (y(n) + y(n+1))) = 0
# z - y(n) - h * f(t(n) + 1/2 * h, 1/2 * (y(n) + z)) = 0

clear;
clc;

lambda = 10;

f = @(x, y) lambda * (-y + sin(x));
T = 10;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 0;

for n = 1:length(y)-1
  y(n+1) = fzero(@(z) z - y(n) - h * f(t(n) + 1/2 * h, 1/2 * (y(n) + z)), y(n));
end

plot(t,y);
