% Written by Mark Shperkin

function x = forward4(B, b)
    x = zeros(4, 1);
    x(1) = b(1) / B(1, 1);

    for i = 2:4
        x(i) = (b(i) - B(i, 1:i-1) * x(1:i-1)) / B(i, i);
    end
end

% forward4 function performs forward substitution for a 4x4 lower triangular matrix B and vector b.
% It returns the solution vector x for the equation Bx = b.
%
% Inputs:
% - B: a 4x4 lower triangular matrix.
% - b: a 4x1 vector.
%
% Output:
% - x: a 4x1 solution vector.
%
% Usage in MATLAB/Octave:
% B = [2 0 0 0; 3 3 0 0; 1 2 4 0; 5 6 7 5];
% b = [4; 5; 6; 7];
% x = forward4(B, b);
% disp(x);
