format long

A = [3 -1 -1; 1 3 1; 2 -2 4];
b = [1; 5; 4];
x1 = [0; 0; 0];
temp = x1;
n = size(A,1);
erro = 1;
cont = 0;

while erro > 0.000001
    temp = x1;
    for i=1:n
        soma = 0;
        for j=1:n
           if i~=j
            soma = soma + A(i,j)*x1(j);
           end
        end
        x1(i)=(b(i) - soma)/A(i,i);
    end
cont = cont + 1;
erro = norm(abs(temp - x1));
end
x1
cont