function [q,r] = modifiedGS(A)
% Modified Graham-Schmidt
[m,n] = size(A);
if n ~= m
   disp('n != m, entry is non-square')
end
V = A;
r = zeros(n,n);
q = zeros(m,n);
for k = 1:n
    r(k,k) = norm(V(:,k), 2);
    q(:,k) = V(:,k)/r(k,k);
    for j = (k+1):n
        r(k,j) = dot(q(:,k), V(:,j));
        V(:,j) = V(:,j) - r(k,j)*q(:,k);
    end 
end

end 
