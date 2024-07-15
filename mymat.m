% Written by Mark Shperkin

function A = mymat(n)
    % Create an n x n matrix with 11, 22, 33, ... on the subdiagonal

    % Initialize the matrix with zeros
    A = zeros(n);

    % Fill the subdiagonal with the specified values starting from 11
    for i = 1:n-1
        A(i+1, i) = 11 * i;
    end
end

% mymat function creates an n x n matrix with values 11, 22, 33, ..., on the subdiagonal.
% It returns the created matrix.
%
% Inputs:
% - n: the size of the matrix.
%
% Outputs:
% - A: the generated n x n matrix with the specified subdiagonal values.
%
% Usage in MATLAB/Octave:
% n = 5;
% A = mymat(n);
% disp('Generated matrix:');
% disp(A);
