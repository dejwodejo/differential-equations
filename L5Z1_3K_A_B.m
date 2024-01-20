# L5Z1 Trzykrokowa metoda Adamsa - Bashfortha

# y(n+1) =  y(n) + h * (23/12 * f(t(n), y(n)) - 4/3 * f(t(n-1), y(n-1)) + 5/12 * f(t(n-2), y(n-2))

f = @(t, y) 2 * y + t
T = 1;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:2
  y(n+1) = y(n) + h * f(t(n), y(n)); # Jawna metoda Eulera
end

for n = 3:length(y) - 1;
   y(n+1) =  y(n) + h * (23/12 * f(t(n), y(n)) - 4/3 * f(t(n-1), y(n-1)) + 5/12 * f(t(n-2), y(n-2)));
end

plot(t,y);
hold on
plot(t, 1/4 * (5 * exp(2 * t) - 2 * t - 1))
