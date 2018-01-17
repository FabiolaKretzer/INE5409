A = [ 1 -1 1; 2 3 -1; -3 1 1 ]
B = [ 1; 4; -1 ]
A1 = [ 1 -1 1; 2 3 -1; -3 1 1 ]
B2 = [ 1; 4; -1 ]
n = size(A,1)
linhas = [1,n]; %sequência de linhas usadas
for k = 1:n-1
	%troca de linhas se baseando no maior valor absoluto
	maior = abs(A(linhas(i),k));
	pivo = k;
	for i = k+1:n
		if maior < abs(A(linhas(k), k))
			pivo = i;
			maior = abs(A(linhas(i), k));
		end
	end
	tmp = linhas(pivo);
	linhas(pivo) = linhas(k);
	linhas(k) = temp;
	A
	B

	%transformação para triandular inferior
	for i = k+1:n
		m = A(linhas(i),k)/A(linhas(k),k);
		for j = k:n
			A(linhas(i), j) = A(linhas(i), j) - m * A(linhas(k), j);
		end
		B(linhas(i)) = B(linhas(i)) - m * B(linhas(k));
	end
end

%solucionando o problema
X(linhas(n)) = B(linhas(n)), colunas(n));
for i = n-1:1:-1
	soma = 0;
	for j = i+1:n
		soma = soma + A(linhas(i), j) * X(j);
	end
	X(i) = (B(linhas(i)) - soma)/A(linhas(i), i);
end

A
B
X
linhas
r = abs(B1 - A1*X')
	

