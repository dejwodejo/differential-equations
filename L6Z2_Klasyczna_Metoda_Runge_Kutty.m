# L6Z2 klasyczna Metoda Runge-Kutty

clear;
clc;

alpha = 10;
gamma = 28;
beta = 8/3;

f1 = @(t, y1, y2, y3) alpha * y2 - alpha * y1;
f2 = @(t, y1, y2, y3) gamma * y1 - y1 * y3 - y2;
f3 = @(t, y1, y2, y3) y1 * y2 - beta * y3;

T = 5;
h = 0.01;
t = 0:h:T;
y1 = zeros(size(t));
y2 = zeros(size(t));
y3 = zeros(size(t));

y1(1) = 1;
y2(1) = 1;
y3(1) = 1;

for n = 1 : length(y1) - 1
  k1 = f1(t(n), y1(n), y2(n), y3(n));
  k2 = f1(t(n) + 1/2 * h, y1(n) + 1/2 * h * k1, y2(n) + 1/2 * h * k1, y3(n) + 1/2 * h * k1);
  k3 = f1(t(n) + 1/2 * h, y1(n) + 1/2 * h * k2, y2(n) + 1/2 * h * k2, y3(n) + 1/2 * h * k2);
  k4 = f1(t(n+1), y1(n) + h * k3, y2(n) + h * k3, y3(n) + h * k3);

  y1(n+1) = y1(n) + 1/6 * h * (k1 + 2 * k2 + 2 * k3 + k4);

  k1 = f2(t(n), y1(n), y2(n), y3(n));
  k2 = f2(t(n) + 1/2 * h, y1(n) + 1/2 * h * k1, y2(n) + 1/2 * h * k1, y3(n) + 1/2 * h * k1);
  k3 = f2(t(n) + 1/2 * h, y1(n) + 1/2 * h * k2, y2(n) + 1/2 * h * k2, y3(n) + 1/2 * h * k2);
  k4 = f2(t(n+1), y1(n) + h * k3, y2(n) + h * k3, y3(n) + h * k3);

  y2(n+1) = y2(n) + 1/6 * h * (k1 + 2 * k2 + 2 * k3 + k4);

  k1 = f3(t(n), y1(n), y2(n), y3(n));
  k2 = f3(t(n) + 1/2 * h, y1(n) + 1/2 * h * k1, y2(n) + 1/2 * h * k1, y3(n) + 1/2 * h * k1);
  k3 = f3(t(n) + 1/2 * h, y1(n) + 1/2 * h * k2, y2(n) + 1/2 * h * k2, y3(n) + 1/2 * h * k2);
  k4 = f3(t(n+1), y1(n) + h * k3, y2(n) + h * k3, y3(n) + h * k3);

  y3(n+1) = y3(n) + 1/6 * h * (k1 + 2 * k2 + 2 * k3 + k4);
end

plot3(y1, y2, y3)

#plot(t, y1);
#hold on;
#plot(t, y2);
#plot(t, y3);
