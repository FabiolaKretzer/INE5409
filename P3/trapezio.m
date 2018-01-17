clear
clc
a = 0;
b = 1;

n = 4;
h = (b-a)/n;

x = [a:h:b];
y = x.^3;

soma = 0;
for i = 2:n
    soma = soma + y(i);
end

T = h/2 * (y(1) + 2*soma + y(n+1))

% trapezio no matlab
trapz(x, y)
