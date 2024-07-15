% Written by Mark Shperkin

function solverolver(V, B)
    %check if the input matrix B is upper triangular
    if ~isequal(triu(B), B)
        error('Input matrix B must be upper triangular.');
    end

    %check if V and B are valid
    if length(V) ~= size(B, 1) || size(B, 1) ~= size(B, 2)
        error('Invalid dimensions for input vectors.');
    end

    %create augmented matrix C
    C = [B, -eye(size(B)); zeros(size(B)), B'];

    % Create the augmented vector D
    D = [V, zeros(1, length(V))];

    %[C|D]
    CD = [C, D'];

    X = rref(CD);

    Xp = X(1:size(B, 2), end);
    XS = X(size(B, 2)+1:end, end);

    %check for inconsistency
    if any(XS ~= 0)
        disp('No solution exists. The system is inconsistent.');
    else
        disp('Solution exists.');
        disp('Flow through each vertex:');
        disp(Xp);
    end
end

% solverolver function solves a system of linear equations represented by an upper triangular matrix B and a vector V.
% It checks for the existence of a solution and calculates the flow through each vertex.
%
% Inputs:
% - V: a vector representing the flow.
% - B: an upper triangular matrix.
%
% Outputs:
% - Xp: a vector representing the flow through each vertex if the system is consistent.
%
% Usage in MATLAB/Octave:
% V = [1; 2; 3];
% B = [1 1 1; 0 1 1; 0 0 1];
% solverolver(V, B);
