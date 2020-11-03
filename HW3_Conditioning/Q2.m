%% Problem 2
% a)
format long
f = @(x) (x.^9 - 18 * x.^8 + 144 * x.^7 - 672 * x.^6 + 2016 * x.^5 - 4032 * x.^4 + 5376 * x.^3 - 4608 * x.^2 + 2304 * x - 512);
f_exact = @(x) (x-2).^9;

x = linspace(1.920, 2.080, (2.080 - 1.920 )/ (0.001) );
f1 = figure;
plot(x, f(x))
saveas(f1, 'Q2_expansion.eps')
% b)
f2 = figure;
plot(x, f_exact(x))

saveas(f2, 'Q2_exact.eps')
