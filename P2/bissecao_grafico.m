function bissecao
clear
clc
format long
erro = 10^-6;
a = 0;
b = 1;

x=[a:0.1:b];
y=funcao(x);
plot(x,y);
grid
hold on

fa = funcao(a);
fb = funcao(b);
k=0;
fxm = 1;

while abs(fxm) > erro
    k = k+1;
    xm = (a+b)/2;
    fxm = funcao(xm);
    plot(xm,fxm,'r*')
    if fa*fxm < 0
       b = xm;
    else
       a = xm;
       fa = fxm;
    end
    %xms(k) = xm;
end

xm
k
fxm

function y=funcao(x)
    y=exp(x).*sin(x)-1;
end

end
