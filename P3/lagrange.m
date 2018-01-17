clc
clear

x = [55 70 85 100 120 140];
y = [14.08 13.56 13.28 13.27 11.30 10.4];
n = length(x);
xmin = x(1);
xmax = x(n);

for k = 1:n
    xponto(k) = 0;

    for i = 1:n
        cima = 1;
        baixo = 1;
       for j = 1:n
           if i ~= j
               cima = cima * (x(k)-x(j));
               baixo = baixo * (x(i) - x(j));
           end
       end
       L(i) = cima/baixo;
       xponto(k) = xponto(k) + y(i)*L(i);
    end

end
xponto

x1 = [xmin:1:xmax];
n1 = length(x1)

for k = 1:n1
    p(k) = 0;

    for i = 1:n
        cima = 1;
        baixo = 1;
       for j = 1:n
           if i ~= j
               cima = cima * (x1(k) - x(j));
               baixo = baixo * (x(i) - x(j));
           end
       end
       L(i) = cima/baixo;
       p(k) = p(k) + y(i)*L(i);
    end
end

plot(x,y,'o')
hold on
plot(x1,p,'r')
pause
