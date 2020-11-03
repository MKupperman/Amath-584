n = 110;
m = 109;
A = randn(n,m);
cond(A)
A(:, m+1) = A(:, 1);
cond(A)

size(A)
det(A)
