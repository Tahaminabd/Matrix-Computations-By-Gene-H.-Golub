function b =forward_substitution(L, b)
    n = length(b);
    
    b(1) = b(1) / L(1, 1);
    
    for i = 2:n
        b(i) = (b(i) - L(i, 1:i-1) * b(1:i-1)) / L(i, i);
    end
end
%L = [1 0 0; 2 3 0; 4 5 6];
%b = [1; 2; 3];

%solution = forward_substitution(L, b);

%disp('Solution:');
%disp(solution);
