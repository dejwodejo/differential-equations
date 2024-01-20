# L5Z1 Dwukrokowa Metoda Adamsa - Moultona

# y(n+1) = y(n) + h * (5/12 * f(t(n+1), y(n+1)) + 2/3 * f(t(n), y(n)) - 1/12 * f(t(n-1), y(n-1)))
# y(n+1) - y(n) - h * (5/12 * f(t(n+1), y(n+1)) + 2/3 * f(t(n), y(n)) - 1/12 * f(t(n-1), y(n-1))) = 0
# z - y(n) - h * (5/12 * f(t(n+1), z) + 2/3 * f(t(n), y(n)) - 1/12 * f(t(n-1), y(n-1))) = 0

f = @(t, y) 2 * y + t
T = 1;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

# Tylko jeden krok
for n = 1:1
  y(n+1) = y(n) + h * f(t(n), y(n)); # Jawna metoda Eulera
end

# Pozosta³e kroki za pomoc¹ dwukrokowej Adamsa - Moultona
for n = 2:length(y)-1
  y(n+1) = fzero(@(z) z - y(n) - h * (5/12 * f(t(n+1), z) + 2/3 * f(t(n), y(n)) - 1/12 * f(t(n-1), y(n-1))), y(n));
end

plot(t, y);
hold on
plot(t, 1/4 * (5 * exp(2 * t) - 2 * t - 1))
