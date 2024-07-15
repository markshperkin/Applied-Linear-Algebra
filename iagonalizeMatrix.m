% Written by Mark Shperkin

function [P, D] = diagonalizeMatrix(A)
    % Step 1: Calculate the characteristic polynomial
    p = poly(A);

    % Step 2: Find and sort the roots
    v = roots(p);
    eigenvalues = sort(round(v));

    % Step 3-4: Find eigenspaces and check dimensions
    P = [];
    for i = 1:length(eigenvalues)
        lambda = eigenvalues(i);

        % Calculate eigenspace
        B = A - lambda * eye(size(A));
        eigenspace = null(B);

        % Check dimensions
        if size(eigenspace, 2) ~= sum(v == lambda)
            error('The matrix is not diagonalizable.');
        end

        % Step 5: Find orthonormal basis using grams.m
        eigenvectors = grams(eigenspace);

        % Step 6: Group eigenvectors by eigenvalue
        P = [P eigenvectors];
    end

    % Step 7: Create diagonal matrix D
    D = diag(eigenvalues);

    % Step 8: Check if P is orthonormal and A = P * D * P'
    if norm(P' * P - eye(size(A))) > eps || norm(A - P * D * P', 'fro') > eps
        error('The matrix is not diagonalizable.');
    end
end

% diagonalizeMatrix function attempts to diagonalize a given square matrix A.
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
% [P, D] = diagonalizeMatrix(A);
% disp('Matrix P:');
% disp(P);
% disp('Matrix D:');
% disp(D);
%
% Note: This function uses the grams.m function for orthonormalization.
