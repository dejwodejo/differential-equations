# L5Z1 Czterokrokowa metoda Adamsa - Bashfortha

# y(n+1) =  y(n) + h * (55/24 * f(t(n), y(n)) - 59/24 * f(t(n-1), y(n-1)) + 37/24 * f(t(n-2), y(n-2) - 3/8 * f(t(n-3), y(n-3))

f = @(t, y) 2 * y + t
T = 1;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:3
  y(n+1) = y(n) + h * f(t(n), y(n)); # Jawna metoda Eulera
end

for n = 4:length(y) - 1;
   y(n+1) =  y(n) + h * (55/24 * f(t(n), y(n)) - 59/24 * f(t(n-1), y(n-1)) + 37/24 * f(t(n-2), y(n-2)) - 3/8 * f(t(n-3), y(n-3)));
end

plot(t,y);
hold on
plot(t, 1/4 * (5 * exp(2 * t) - 2 * t - 1))
