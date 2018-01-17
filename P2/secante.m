function newton
clear 
clc
format long
    function y = f(x)
        y = exp(x).*sin(x) - 1;
    end
    
    x0 = 0;
    x1 = 1;
    erro = 10^-6;
    x = [x0:0.1:x1];
    y = f(x);
    
    plot(x,y);
    grid
    hold on

    k = 0;
    while abs(f(x1)) > erro
        fx0 = f(x0);
        fx1 = f(x1);
        
        xk = x1 - ((fx1*(x1-x0)) / (fx1-fx0)); 
        x0 = x1;
        x1 = xk;
        
        %r = derivada + (x1 -x)*funcao;
        
        %plot(r);
        %grid
        %hold on
        k = k + 1;
    end
    x0
    x1
    fx0
    fx1
    k
 end