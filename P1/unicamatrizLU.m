clear
clc

A=[1 -1 1; 2 3 -1; -3 1 1];
b=[1; 4; -1];
n=size(A,1);
for k=1:n
    for i=k:n
        soma = 0;
        for r =1:k-1
            soma = soma + A(i,r)*A(r,k);
        end
    A(i,k) = A(i,k)-soma;
    end
    for j=k+1:n
        soma = 0;
        for r=1:k-1
            soma = soma + A(k,r)*A(r,j);
        end
        A(k,j) = (A(k,j)-soma)/A(k,k);
    end
end
A
y(1)=b(1)/A(1,1);
for i=2:n
    soma = 0;
    for j=1:i-1
        soma = soma + A(i,j)*y(j);
    end
    y(i) = (b(i)-soma)/A(i,i);
end
y
x(n) = y(n);
for i=n-1:-1:1
    soma = 0;
    for j=i+1:n
        soma = soma +A(i,j)*x(j);
    end
    x(i) = y(i)-soma;
end
x
