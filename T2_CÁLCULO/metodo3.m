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

%Método 3
result = A(1,1);
for i = 2:n
   mult = A(i,i);
   for j = 1:i-1
     mult = mult * (105 - x(j));
   end
   result = result + mult;
end
