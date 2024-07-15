% Written by Mark Shperkin

function total = vectorsum(input_vector)
    % This function calculates the sum of a vector.

    % Use the sum function to calculate the sum of the input_vector
    total = sum(input_vector);
end

% vectorsum function calculates the sum of the elements in an input vector.
% It returns the total sum.
%
% Inputs:
% - input_vector: a vector of numerical values.
%
% Outputs:
% - total: the sum of the elements in the input vector.
%
% Usage in MATLAB/Octave:
% input_vector = [1, 2, 3, 4, 5];
% total = vectorsum(input_vector);
% disp(['Sum of the input vector is ', num2str(total)]);
