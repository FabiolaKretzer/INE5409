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

%Método 1
soma = 0;
for j = 1:n
    soma = soma + coef(j) * 105^(j-1);
end
