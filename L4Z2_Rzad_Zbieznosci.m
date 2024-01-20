# L4Z2 Metoda Niejawna Eulera

# Rz�d zbie�no�ci
# e_i = |y(t_i)-y_i|
# |y(T)-y_n| = e = max_i e_i approx Ch^P, gdzie P - rz�d zbie�no�ci
# chcemy du�e P, bo najcz�ciej h < 1

# (e_h)/(e_(h/2)) = (Ch^P)/(C_(h)(2})^P = 2^P
# P = log_2(e_h/e_(h/2))

clear;
clc;

f = @(t,y) y - t;
h = 0.1;
T = 2;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1/2;

for n=1:length(y)-1
  y(n+1) = fzero(@(z) z - y(n) - h * f(t(n+1), z), y(n));
end

e1 = abs(T-(1/2)*exp(T)+1-y(end));  # e_h

h = 0.1/2;
T = 2;
t = 0:h:T;
y = zeros(size(t));
y(1) = 1/2;

for n=1:length(y)-1
  y(n+1) = fzero(@(z) z - y(n) - h * f(t(n+1), z), y(n));
end

e2 = abs(T-(1/2)*exp(T)+1-y(end)); # e_(h/2)

P = log2(e1/e2) # Rz�d = 1, bo P to liczba naturalna, b��d wynika z tego, �e pracujemy na przybli�eniach
                # Wzi�cie mniejszego h pocz�tkowego da nam lepsze przybli�enie
