function [L, U] = block_lu_algorithm(A, l)
    n = size(A, 1);
    L = eye(n);
    U = zeros(n);
    
    for j = l:n
        if j == 1
            v = A(:, l);
        else
            ii = A(:, j);
            z = L(l:j-1, l:j-1) \ ii(l:j-1);
            U(l:j-1, j) = z;
            v(j:n) = ii(j:n) - L(j:n, l:j-1) * z;
        end
        
        U(j, j) = v(j);
        L(j+1:n, j) = v(j+1:n) / v(j);
    end
end

%A = [2 1 -1; -3 -1 2; -2 1 2];
%l = 1;

%[L, U] = block_lu_algorithm(A, l);

%disp('L:');
%disp(L);
%disp('U:');
%disp(U);
