% Pontos e função
x = [55 70 85 100 120 140];
y = [14.08 13.56 13.28 12.27 11.30 10.4];
n = length(x);
xmin = 55;
xmax = 140;

% Pontos dados
plot(x,y, 'o');
hold on
pause

intervalo = [xmin:1:xmax];
n_intervalo = length(intervalo);

%1)Determinar  os  coeficientes  do  polinômio  interpolador  obtidos  numericamente 
%(através da resolução do sistema linear) e construir o gráfico da interpolação; 
for i = 1:n
   for j = 1:n
      A(i,j) = x(i)^(j-1);
   end
end

% Solução do sistema
coef = A\y';

for i = 1:n_intervalo
    y(i) = 0;
    for j = 1:n
        y(i) = y(i) + coef(j) * intervalo(i)^(j-1);
    end
end

plot(intervalo, y, 'b');
hold on
pause

%2)Utilizar o algoritmo de Lagrange;  
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


%3)Utilizar o algoritmo das Diferenças Divididas de Newton;
for i = 1:n
   A(i,1) = y(i);
end

for j = 2:n
   for i = j:n
       A(i,j) = (A(i,j-1) - A(i-1,j-1)) / (x(i) - x(i-j+1));
   end
end

for k = 1:n_intervalo
    y(k) = A(1,1);
    for i = 2:n
       mult = A(i,i);
       for j = 1:i-1
         mult = mult * (intervalo(k) - x(j));
       end
       y(k) = y(k) + mult;
    end
end

plot(intervalo, y, 'c');
hold on
pause

%4)Utilizar interpolação Spline Cúbida do matlab (função spline ou interp1) 
cubica = spline(x, y, intervalo);
plot(intervalo, cubica, '-.')
hold on
pause

%5)Comparar os resultados dos itens 1, 2, 3 e 4 graficamente; 
%Os métodos 1, 2 e 3 geram polinômios iguais, e tem grau 6.
%Já o método 4 fera um polinômio de grau 3, gerando um gráfico um pouco diferente dos outros

%6)Avaliar o valor do polinômio interpolador para um ponto específico dentro do 
%intervalo para os quatro métodos; 

%Método 1
soma = 0;
for j = 1:n
    soma = soma + coef(j) * 105^(j-1);
end

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

%Método 3
result = A(1,1);
for i = 2:n
   mult = A(i,i);
   for j = 1:i-1
     mult = mult * (105 - x(j));
   end
   result = result + mult;
end

%Método 4
soma_spline = spline(x, y, 105);
