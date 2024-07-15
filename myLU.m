% Written by Mark Shperkin

function [L, U] = myLU(A)
    [n, ~] = size(A);
    % Initialize L as an identity matrix and U as a copy of A
    L = eye(n);
    U = A;

    for k = 1:n
        for j = k+1:n
            % Calculate the multiplier for row j
            L(j, k) = U(j, k) / U(k, k);

            % Update row j of U
            U(j, k:n) = U(j, k:n) - L(j, k) * U(k, k:n);
        end
    end
end

% myLU function performs LU decomposition of a square matrix A.
% It returns the lower triangular matrix L and the upper triangular matrix U such that A = L * U.
%
% Inputs:
% - A: a square matrix.
%
% Outputs:
% - L: the lower triangular matrix.
% - U: the upper triangular matrix.
%
% Usage in MATLAB/Octave:
% A = [4, 3; 6, 3];
% [L, U] = myLU(A);
% disp('Matrix L:');
% disp(L);
% disp('Matrix U:');
% disp(U);
