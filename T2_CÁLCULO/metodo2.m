% Pontos e função
x = [55 70 85 100 120 140];
y = [14.08 13.56 13.28 12.27 11.30 10.4];
n = length(x);
xmin = 55;
xmax = 140;


intervalo = [xmin:1:xmax];
n_intervalo = length(intervalo);

for k = 1:n_intervalo
    y_lag(k) = 0;
    for i = 1:n
        cima = 1;
        baixo = 1;
       for j = 1:n
           if i ~= j
               cima = cima * (intervalo(k)-x(j));
               baixo = baixo * (x(i) - x(j));
           end
       end
       L(i) = cima/baixo;
       y_lag(k) = y_lag(k) + y(i)*L(i);
    end
end

plot(intervalo, y_lag, 'r');
hold on
pause

%Método 2
resultado = 0;
for i = 1:n
    cima = 1;
    baixo = 1;
   for j = 1:n
       if i ~= j
           cima = cima * (105-x(j));
           baixo = baixo * (x(i) - x(j));
       end
   end
   L(i) = cima/baixo;
   resultado = resultado + y(i)*L(i);
end
