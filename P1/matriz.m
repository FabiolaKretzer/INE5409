A = [4 2 3; 2 -4 -1; -1 1 4];
b = [7; 1; -5];
n = size(A,1);

for k = 1:n-1
	% Transformação para triangular inferior
	for i = K+1:n
		m = A(i,k)/A(k,k);
		for j = k:n
			A(i,j) = b(i) - m*b(k)
		end
		b(i) = b(i) - m*b(k);
	end
end

%Solucionando o sistema
x(n) = b(n)/A(n,n);
for i = n-1:-1:1
	soma = 0;
	for j = i+1:n
		soma = soma + A(i,j)*x(j);
	end
	x(i) = (b(i) - soma)/A(i,i);
end
%Resulatado das operações
A
b
%Solução
x
