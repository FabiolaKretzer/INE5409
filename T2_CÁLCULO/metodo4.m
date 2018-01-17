% Pontos e função
x = [55 70 85 100 120 140];
y = [14.08 13.56 13.28 12.27 11.30 10.4];
n = length(x);
xmin = 55;
xmax = 140;

% Pontos dados
plot(x,y, 'o');
hold on
pause

intervalo = [xmin:1:xmax];
n_intervalo = length(intervalo);

cubica = spline(x, y, intervalo);
plot(intervalo, cubica, '-.')
hold on
pause

%Método 4
soma_spline = spline(x, y, 105);
