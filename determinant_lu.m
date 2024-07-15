% Written by Mark Shperkin

function detA = lu_det(A)
    tic

    [L, U, P] = lu(A);

    detA = prod(diag(U)) * det(P);

    toc
end

% lu_det function calculates the determinant of a matrix using LU decomposition.
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
% detA = lu_det(A);
% disp(detA);
