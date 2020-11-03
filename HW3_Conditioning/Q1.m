% A utility script to perform the calculations in question 1.
n = 500;
%% First try a poorly-conditioned matrix
x = magic(n); 
disp('The condition number of the matrix is')
disp(cond(x))
[Qm, Rm] = modifiedGS(x);
[Qf, Rf] = qrfactor(x);
[Qd, Rd] = qr(x);
A = x;
Am = Qm * Rm;
Af = Qf * Rf;
Ad = Qd * Rd;

% Check errors
disp('The average/variance component-wise errors are (modified, qrfactor, matlab)')
disp(mean(A - Am, 'all'))
disp(var(A - Am, 1, 'all'))
fprintf('\n')

disp(mean(A - Af, 'all'))
disp(var(A - Af, 1, 'all'))
fprintf('\n')

disp(mean(A - Ad, 'all'))
disp(var(A - Ad, 1, 'all'))
fprintf('\n')

fprintf(' How orthogonal is the matrix Q? \n(consider Q*Q.T - eye(n))  (modified; qrfactor; matlab)\n')
disp(mean((Qm * transpose(Qm)) - eye(n), 'all'))
disp(var((Qm * transpose(Qm)) - eye(n), 1, 'all'))
fprintf('\n')

disp(mean((Qf * transpose(Qf)) - eye(n), 'all'))
disp(var((Qf * transpose(Qf)) - eye(n), 1, 'all'))
fprintf('\n')

disp(mean((Qd * transpose(Qd)) - eye(n), 'all'))
disp(var((Qd * transpose(Qd)) - eye(n), 1, 'all'))
fprintf('\n')

%% Now a decently conditioned matrix
x = randn(n); 
%x(:, end) = x(:,1);
disp(' ')
disp('The condition number of the matrix is')
disp(cond(x))

[Qm, Rm] = modifiedGS(x);
[Qf, Rf] = qrfactor(x);
[Qd, Rd] = qr(x);
A = x;
Am = Qm * Rm;
Af = Qf * Rf;
Ad = Qd * Rd;

% Check errors
disp('The average/variance component-wise errors are (modified, qrfactor, matlab)')
disp(mean(A - Am, 'all'))
disp(var(A - Am, 1, 'all'))
fprintf('\n')

disp(mean(A - Af, 'all'))
disp(var(A - Af, 1, 'all'))
fprintf('\n')

disp(mean(A - Ad, 'all'))
disp(var(A - Ad, 1, 'all'))
fprintf('\n')

fprintf(' How orthogonal is the matrix Q? \n(consider Q*Q.T - eye(n))  (modified; qrfactor; matlab)\n')
disp(mean((Qm * transpose(Qm)) - eye(n), 'all'))
disp(var((Qm * transpose(Qm)) - eye(n), 1, 'all'))
fprintf('\n')

disp(mean((Qf * transpose(Qf)) - eye(n), 'all'))
disp(var((Qf * transpose(Qf)) - eye(n), 1, 'all'))
fprintf('\n')

disp(mean((Qd * transpose(Qd)) - eye(n), 'all'))
disp(var((Qd * transpose(Qd)) - eye(n), 1, 'all'))
fprintf('\n')

%% Try a non-square matrix
x = randn(n, n-2); 
%x(:, end) = x(:,1);
disp(' ')
disp('The condition number of the matrix is')
disp(cond(x))

[Qm, Rm] = modifiedGS(x);
[Qf, Rf] = qrfactor(x);
[Qd, Rd] = qr(x);
A = x;
Am = Qm * Rm;
Af = Qf * Rf;
Ad = Qd * Rd;

% Check errors
disp('The average component-wise errors are (modified, qrfactor, matlab)')
disp('The average/variance component-wise errors are (modified, qrfactor, matlab)')
disp(mean(A - Am, 'all'))
disp(var(A - Am, 1, 'all'))
fprintf('\n')

disp(mean(A - Af, 'all'))
disp(var(A - Af, 1, 'all'))
fprintf('\n')

disp(mean(A - Ad, 'all'))
disp(var(A - Ad, 1, 'all'))
fprintf('\n')

fprintf(' How orthogonal is the matrix Q? \n(consider Q*Q.T - eye(n))  (modified; qrfactor; matlab)\n')
disp(mean((Qm * transpose(Qm)) - eye(n), 'all'))
disp(var((Qm * transpose(Qm)) - eye(n), 1, 'all'))
fprintf('\n')

disp(mean((Qf * transpose(Qf)) - eye(n), 'all'))
disp(var((Qf * transpose(Qf)) - eye(n), 1, 'all'))
fprintf('\n')

disp(mean((Qd * transpose(Qd)) - eye(n), 'all'))
disp(var((Qd * transpose(Qd)) - eye(n), 1, 'all'))
fprintf('\n')
