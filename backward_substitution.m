function b = backward_substitution(U, b)
    n = length(b);
  
    for j = n:-1:1
     b(j) = b(j) / U(j, j);
        b(1:j-1) = b(1:j-1) - b(j) * U(1:j-1, j);
    end
    %b(1) = b(1) / U(1, 1);
end

%U = [2 1 -1; 0 -1 2; 0 0 3];%
 %b = [4; -3; 6];

%solution = backward_substitution(U, b);

%disp('Solution:');
%disp(solution);
