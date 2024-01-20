# L4Z1 Metoda Kutty

# y_(n+1) = y_n + hf(t_n, y_n)

# y' = -y, y(0) = 1

f = @(t,y) - y;
T = 1;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:length(y) - 1
  k1 = f(t(n), y(n));
  k2 = f(t(n) + 1/2 * h, y(n) + 1/2 * h * k1);
  k3 = f(t(n) + h, y(n) - h * k1 + 2 * h * k2);
  y(n+1) = y(n) + 1/6 * h * (k1 + 4 * k2 + k3);
end

plot(t,y)
hold on
plot(t, exp(-t));
