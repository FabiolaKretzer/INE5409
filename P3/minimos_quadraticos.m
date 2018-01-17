clear
clc
x = [0 1 2 3 4];
y = [0.01 1.01 1.40 3.81 4.01];
n = length(x);
m = 2; % grau

for i = 1:m+1
    for j = i:m+1
        a(i,j) = 0;
        for k = 1:n
            a(i,j) = a(i,j) + (x(k)^(j-1) * x(k)^(i-1));
        end
        a(j,i) = a(i,j);
    end
    
    b(i) = 0;
    for k = 1:n
       b(i) = b(i) + (y(k) * x(k)^(i-1)); 
    end
end

a
b

c = a\b'

for i = 1:n
   g(i) = 0;
   for k = 1:m+1
      g(i) = g(i) + c(k) * x(i)^(k-1);
   end
end
g


plot(x, y, '*');
hold on
plot(x, g, 'r');
