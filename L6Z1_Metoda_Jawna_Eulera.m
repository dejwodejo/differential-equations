# L6Z1 Uk³ady równañ za pomoc¹ jawnej metody Eulera

# y'1 = y2,            y1(0) = 1
# y'2 = -y1 - 2 * y2,  y2(0) = 1

clear;
clc;

f1 = @(t, y1, y2) y2;
f2 = @(t, y1, y2) -y1 - 2 * y2;
T = 2;
h = 0.01;
t = 0:h:T;
y1 = zeros(size(t));
y2 = zeros(size(t));
y1(1) = 1;
y2(1) = 1;

for n = 1 : length(y1) - 1
  y1(n+1) = y1(n) + h * f1(t(n), y1(n), y2(n));
  y2(n+1) = y2(n) + h * f2(t(n), y1(n), y2(n));
end

plot(t, y1);
hold on
plot(t, y2);
