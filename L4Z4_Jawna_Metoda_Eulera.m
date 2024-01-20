# L4Z4 Jawna Metoda Eulera

clear;
clc;

lambda = 30;

f = @(t, y) - lambda *y;
T = 1;
h = 0.1;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:length(y)-1
  y(n+1) = y(n) + h * f(t(n), y(n));
 end

plot(t,y);
hold on

h = 0.01;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1;

for n = 1:length(y)-1
  y(n+1) = y(n) + h * f(t(n), y(n));
 end

plot(t,y);
