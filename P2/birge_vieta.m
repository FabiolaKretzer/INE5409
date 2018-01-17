function horner
clear 
clc
format long

a = [1 0 2 -1];
erro = 0,0001;
n = length(a);

x = 1;
cont = 0;
b(n) = 1;

    while b(n) > erro
        b(1) = a(1);
        c(1) = b(1);
        for i = 2:n-1
            b(i) = a(i) + b(i-1)*x;
            c(i) = b(i) + c(i-1)*x;
        end
        b(n) = a(n) + b(n-1)*x;
        x = x - (b(n)/c(n-1));
        cont = cont + 1;
    end
 a
 x
 cont
 end