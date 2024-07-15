% Written by Mark Shperkin

function x = backward4(A, b)
    x = zeros(4, 1);
    x(4) = b(4) / A(4, 4);

    for i = 3:-1:1
        x(i) = (b(i) - A(i, i+1:end) * x(i+1:end)) / A(i, i);
    end
end

% backward4 function performs backward substitution for a 4x4 upper triangular matrix A and vector b.
% It returns the solution vector x for the equation Ax = b.
%
% Inputs:
% - A: a 4x4 upper triangular matrix.
% - b: a 4x1 vector.
%
% Output:
% - x: a 4x1 solution vector.
%
% Usage in MATLAB/Octave:
% A = [2 1 1 1; 0 3 2 1; 0 0 4 3; 0 0 0 5];
% b = [10; 11; 12; 13];
% x = backward4(A, b);
% disp(x);
