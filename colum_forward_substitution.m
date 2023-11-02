function b = colum_forward_substitution(L, b)
    n = length(b);
    
    %b(1) = b(1) / L(1, 1);
    
    for j = 1:n
        b(j) = b(j) / L(j, j);
        b(j+1:n) = b(j+1:n) - L(j+1:n, j)*b(j);
    end
end


%L = [1 0 0; 2 3 0; 4 5 6];
%b = [1; 2; 3];

%solution = colum_forward_substitution(L, b);

%disp('Solution:');
%disp(solution);

