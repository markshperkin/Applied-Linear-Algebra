% Written by Mark Shperkin

function [P, D] = diagonalize_matrix(A)

    % Step 1: Calculate characteristic polynomial
    p = poly(A);

    % Step 2: Find roots and sort them
    v = roots(p);
    v = sort(v);

    % Initialize P and D
    P = [];
    D = diag(v);

    % Step 3-4: Find eigenspaces and check dimension
    eigenspaces = cell(length(v), 1);
    for i = 1:length(v)
        lambda = v(i);
        B = A - lambda * eye(size(A));
        eigenspaces{i} = null(B);
    end

    for i = 1:length(v)
        lambda = v(i);
        algebraic_multiplicity = sum(lambda == v);
        dimension_eigenspace = size(eigenspaces{i}, 2);

        if algebraic_multiplicity ~= dimension_eigenspace
            error('The matrix is not diagonalizable.');
        end
    end

    % Step 5: Use Gram-Schmidt to find orthonormal basis
    orthonormal_bases = cell(length(v), 1);
    for i = 1:length(v)
        orthonormal_bases{i} = grams(eigenspaces{i});
    end

    % Step 6: Append to P
    P = cell2mat(orthonormal_bases);

    % Step 7: Check orthonormality of P
    D = diag(v);

    % Step 8: Verify diagonalization
    is_orthonormal = isequal(P' * P, eye(size(P, 2)));
    is_diagonalization = isequal(A, P * D * P');

    if ~is_orthonormal || !is_diagonalization
        error('The matrix is not diagonalizable.');
    end
end

% diagonalize_matrix function attempts to diagonalize a given square matrix A.
% It returns the matrix P of eigenvectors and the diagonal matrix D of eigenvalues.
%
% Inputs:
% - A: a square matrix.
%
% Outputs:
% - P: the matrix of eigenvectors.
% - D: the diagonal matrix of eigenvalues.
%
% Usage in MATLAB/Octave:
% A = [4 1; 2 3];
% [P, D] = diagonalize_matrix(A);
% disp('Matrix P:');
% disp(P);
% disp('Matrix D:');
% disp(D);
