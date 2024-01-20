# L5Z1 Dwukrokowa metoda Adamsa - Bashfortha

# y(n+1) =  y(n) + h * (3/2 * f(t(n), y(n)) - 1/2 * f(t(n-1), y(n-1)))

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

# Pozosta³e kroki za pomoc¹ dwukrokowej Adamsa - Bashfortha
for n = 2:length(y) - 1;
   y(n+1) = y(n) + h*(3/2*f(t(n), y(n)) - 1/2 * f(t(n-1), y(n-1)));
end

plot(t,y);
hold on
plot(t, 1/4 * (5 * exp(2 * t) - 2 * t - 1))
