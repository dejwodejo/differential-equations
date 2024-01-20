# L4Z1 Metoda Heuna

# y_(n+1) = y_n + hf(t_n, y_n)

# y' = -y, y(0) = 1

f = @(t,y) - y;
T = 1;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:length(y) - 1
  y(n+1) = y(n) + 1/2 * h * (f(t(n), y(n)) + f(t(n+1), y(n) + h * f(t(n), y(n))));
end

plot(t,y)
hold on
plot(t, exp(-t));
