x = [-3 -2 1 3];
y = [-1 2 -1 10];
n = length(x);

%for i = 1:n
%   A(i,1) = y(i);
%end
A(:, 1) = y; % Mesma coisa do código comentado acima

for j = 2:n
   for i = j:n
       A(i,j) = (A(i,j-1) - A(i-1,j-1)) / (x(i) - x(i-j+1));
   end
end

xp = [-3:0.1:3];
n1 = length(xp);

for k = 1:n1
    soma = A(1,1);
    for i = 2:n
      mult = A(i,i);
       for j = 1:i-1
         mult = mult*(xp(k) - x(j));
       end
       soma = soma + mult;
    end
    xpontos(k) = soma;
end

plot(x,y,'o')
hold on
plot(xp,xpontos,'r')
hold on
pause
