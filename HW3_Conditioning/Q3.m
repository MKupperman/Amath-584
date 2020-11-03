%% 3a)
N = 300;
M = 300;
nsamples = 100;
cvals = zeros(N,M);
p = gcp('nocreate');
if isempty(p)
    parpool(24);
end

parfor i=1:N
    values = zeros(1, nsamples);
    for j=1:M
        for idx=1:nsamples
            values(idx) = cond(rand(i,j));
        end
        cvals(i,j) = log10(mean(values, 'all'));
    end
end

%%
hm = image(transpose(cvals), 'CDataMapping', 'scaled');
colorbar
title('log10 of average condition number');
xlabel('n rows');
ylabel('m columns');
saveas(gcf, 'Q3_cond_dist.eps', 'epsc')
