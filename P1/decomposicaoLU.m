A = [4 2 3; 2 -4 -1; -1 1 4];
b = [7; 1; -5];
n = size(A,1)
L = [1 0 0; 1 1 0; 1 1 1];
U = [1 1 1; 0 1 1; 0 0 1]
for k=1:n
    % Matriz L
    for i=k:n
        somaL=0;
        for z=1:k-1
            somaL =somaL + L(i,z)*U(z,k);
        end
        L(i,k) = A(i,k) - somaL;
    end
    % Matriz U
    for j=k+1:n
        somaU = 0;
        for z=1:k-1
            somaU = somaU + L(k,z)*U(z,j);
        end
        U(k,j) = (A(k,j) - somaU)/L(k,k);
    end
end
L
U
A
A1 = L*U
% Solucionando o problema
x(n) = b(n)/U(n,n)
for i=n-1:-1:1  soma = 0;
    for j=i+1:n
        soma = soma + U(i,j)*x(j);
    end
    x(i) = (b(i) - soma)/U(i,i);
end
% Solucionanso o sistema
y(n) = x(n)/L(n,n);
for j=1:i-1:1
    soma = 0;
    for j=1:i-1
        soma = soma + L(i,j)*y(i)
    end
    y(i) = (x(i) - soma)/L(i,i);
end
y
    

    
    