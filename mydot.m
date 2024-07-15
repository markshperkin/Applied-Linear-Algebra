% Written by Mark Shperkin

function d = mydot(u, v)

    % Check if the input vectors have the same length
    if length(u) ~= length(v)
        error('Input vectors must have the same dimension.');
    end

    % Calculate the dot product
    d = sum(u .* v);
end

% mydot function calculates the dot product of two vectors u and v.
% It returns the scalar result of the dot product.
%
% Inputs:
% - u: a vector.
% - v: a vector of the same length as u.
%
% Output:
% - d: the dot product of vectors u and v.
%
% Usage in MATLAB/Octave:
% u = [1, 2, 3];
% v = [4, 5, 6];
% d = mydot(u, v);
% disp(['Dot product of u and v is ', num2str(d)]);
