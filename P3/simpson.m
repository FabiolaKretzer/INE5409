clear
clc
a = 0;
b = 1;

n = 2;
h = (b-a)/n;

x = [a:h:b];
y = x.^3;

pares = 0;
impares = 0;
for i = 1:n/2-1
    pares = pares + y(2*i);
    impares = impares + y(2*i+1);
end
pares = pares + y(n);

simps = h/3 * (y(1) + 4*pares + 2*impares + y(n+1))
