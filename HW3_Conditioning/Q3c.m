n = 110;
m = 109;
A = randn(n,m);
A(:, m+1) = A(:, 1);
cv = zeros(1, 100);
epsv = zeros(1, 100);
noise = rand(n,1);
parfor idx = 1:1200
    B = A;
    eps = 1 / idx;
    epsv(idx) = eps
    B(:, end) = B(:, end) + eps * noise;
    cv(idx) = cond(B);
end
semilogx(epsv, cv)
xlabel('$\log_{10}(\epsilon)$', 'Interpreter','latex')
ylabel('$cond(A) +$  noise', 'Interpreter','latex')
title('loglog plot of condition number as ')
saveas(gcf, 'Q3c_eps_cond.eps', 'epsc')
