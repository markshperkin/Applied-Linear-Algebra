% Written by Mark Shperkin

function detA = builtin_det(A)
    tic

    detA = det(A);

    toc
end

% builtin_det function calculates the determinant of a matrix using MATLAB/Octave's built-in det function.
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
% detA = builtin_det(A);
% disp(detA);
