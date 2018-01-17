function Bissecao
    a = 0;
    b = 1;
    
    fa = funcao(a);
    fb = funcao(b);
    
    erro = 0.000001;
    
    fxm = 1;
    cont = 0;

    while abs(fxm) > erro
        cont = cont + 1;
        xm = (a + b)/2;
        fxm = funcao(xm);
        
        if fa*fxm < 0
            b = xm;
        else
            a = xm;
            fa = fxm;
        end
    end
 cont
 fxm
 xm
    function y = funcao(x)
        y = exp(x) * sin(x) - 1;
    end
 end
