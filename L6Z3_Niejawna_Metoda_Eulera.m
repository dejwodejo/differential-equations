# L6Z3 Niejawna Metoda Eulera

# y'' = -y

# y1 = y
# y2 = y'

# y1' = y' = y2
# y2' = y'' = -y = -y1

clear;
clc;

f1 = @(t, y1, y2) y2;
f2 = @(t, y1, y2) -y1;

T = 20;
h = 0.1;
t = 0:h:T;

y1 = zeros(size(t));
y2 = zeros(size(t));

y1(1) = 0;
y2(1) = 1;

for n = 1 : length(y1) - 1
  z = fsolve(@(z) [z(1) - y1(n) - h * f1(t(n), z(1), z(2));
                   z(2) - y2(n) - h * f2(t(n), z(1), z(2))],
                  [y1(n), y2(n)]);
  y1(n+1) = z(1);
  y2(n+1) = z(2);
end

plot(t, y1);

