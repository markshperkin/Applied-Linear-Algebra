% Written by Mark Shperkin

function detA = recursive_det(A)
    tic

    detA = recursive_det_helper(A);

    toc
end

function detA = recursive_det_helper(A)
    % base case
    if numel(A) == 1
        detA = A(1);
        return;
    end

    [n, ~] = size(A);
    detA = 0;

    for i = 1:n
        cofactor = (-1)^(1 + i) * A(1, i) * recursive_det_helper(minor(A, 1, i));
        detA = detA + cofactor;
    end
end

function M = minor(A, row, col)
    M = A([1:row-1, row+1:end], [1:col-1, col+1:end]);
end

% recursive_det function calculates the determinant of a matrix using a recursive approach.
% It also measures and displays the time taken to compute the determinant.
%
% Inputs:
% - A: a square matrix.
%
% Output:
% - detA: the determinant of matrix A.
%
% Usage in MATLAB/Octave:
% A = [1 2 3; 4 5 6; 7 8 9];
% detA = recursive_det(A);
% disp(detA);
