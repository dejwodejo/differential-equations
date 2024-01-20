# L5Z2  metoda Nystroma

# y(n+1) = y(n-1) + 2 * h * f(t(n), y(n))

clear;
clc;

f = @(t, y) -2 * y;
T = 4;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:1
  y(n+1) = y(n) + h * f(t(n), y(n));
end

for n = 2:length(y) - 1
  y(n+1) = y(n-1) + 2 * h * f(t(n), y(n));
end

plot(t,y);
