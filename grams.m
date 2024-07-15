% Written by Mark Shperkin

function Q = grams(A)
    [m, n] = size(A);

    if m ~= n
        error('Matrix is not square.');
    end

    Q = zeros(m, n);

    for j = 1:n
        v = A(:, j);

        for i = 1:j-1
            v = v - (Q(:, i)' * v) * Q(:, i);
        end

        Q(:, j) = v / norm(v);
    end
end

% grams function performs the Gram-Schmidt process to orthogonalize a square matrix A.
% It returns the orthogonal matrix Q.
%
% Inputs:
% - A: a square matrix.
%
% Output:
% - Q: an orthogonal matrix.
%
% Usage in MATLAB/Octave:
% A = [1 1 1; 1 2 3; 1 3 6];
% Q = grams(A);
% disp(Q);
