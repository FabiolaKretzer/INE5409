function newton
clear 
clc
format long
    function y = f(x)
        y = exp(x).*sin(x) - 1;
    end

    function z = g(x)
        z = exp(x).*sin(x) + exp(x).*cos(x);
    end

    erro = 10^-6;
    x = [0:0.1:1];
    y = f(x);
    
    plot(x,y);
    grid
    hold on
    
    x0 = 1;
    fx = f(x0);
    df = g(x0);

    k = 0;
    while abs(f(x0)) > erro
        df = g(x0);
        fx = f(x0);
        
        xk = x0 - (fx /df); 
        x0 = xk;
        
        %r = derivada + (x1 -x)*funcao;
        
        %plot(r);
        %grid
        %hold on
        k = k + 1;
    end
    x0
    fx
    k
 end