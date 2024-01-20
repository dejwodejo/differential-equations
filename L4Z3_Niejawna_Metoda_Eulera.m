# L4Z3 Niejawna Metoda Eulera

# y(n+1) = y(n) + hf(t(n+1), y(n+1))
# y(n+1) - y(n) - hf(t(n+1), y(n+1)) = 0
# z - y(n) - hf(t(n+1), z) = 0

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
  y(n+1) = fzero(@(z) z - y(n) - h * f(t(n+1), z), y(n));
end

plot(t,y);
