function [L, U] = BlockLU(A, n, r)
    if n <= r
        [L, U] = lu(A);
    else
        [L1, U1] = lu(A(1:r, 1:r));
        L21=A(r+1:end,1:r)/U1;
        U12 = L1 \ A(1:r, r+1:n);
        A_rn = A(r+1:n, r+1:n) - L21* U12;
        [L22, U22] = BlockLU(A_rn, n-r, r);
        
        L = [L1 zeros(r, n-r);L21 L22];
        U = [U1 U12; zeros(n-r, r) U22];
    end
end
%A = [2 1 -1 3; -3 -1 2 -1; -2 1 2 0; 4 2 -3 1];
%n = size(A, 1);
%r = 2;
%[L, U] = BlockLU(A, n, r);
%disp('L:');
%disp(L);
%disp('U:');
%disp(U);
