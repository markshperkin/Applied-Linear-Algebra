% Written by Mark Shperkin

function result = mybinomial(n, k)
    % Check for valid inputs
    if n < k || n < 0 || k < 0
        error('Invalid input');
    end

    % Initialize result to 1
    result = 1;

    % Calculate n choose k using loops
    for i = 1:k
        result = result * (n - i + 1) / i;
    end
end

% mybinomial function calculates the binomial coefficient "n choose k".
% It returns the binomial coefficient for given n and k.
%
% Inputs:
% - n: the number of items.
% - k: the number of items to choose.
%
% Output:
% - result: the binomial coefficient.
%
% Usage in MATLAB/Octave:
% n = 5;
% k = 2;
% result = mybinomial(n, k);
% disp(['Binomial coefficient (', num2str(n), ' choose ', num2str(k), ') is ', num2str(result)]);
