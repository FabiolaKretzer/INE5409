clc
clear
format long

x = [55 70 85 100 120 140];
y = [14.08 13.56 13.28 13.27 11.30 10.4];
n = length(x);
xmin = 55;
xmax = 140;

% matriz de x's
for i = 1:n
   for j = 1:n
      A(i,j) = x(i)^(j-1);
   end
end

A
y

% cx^0 + bx^1 + ax^2 = y
c = A\y'

x1 = [xmin:1:xmax];
n1 = length(x1);
% Achando o valor do polinomio nos pontos
for i = 1:n1
    p(i) = 0;
    for j = 1:n
        p(i) = p(i) + c(j)*x1(i)^(j-1);
    end
end
p;

plot(x,y, 'o');
hold on
plot(x1,p, 'r');

y_105 = 0;
for j = 1:n
    y_105 = y_105 + c(j)*105^(j-1);
end
y_105

plot(105,y_105, '*');

pause
