% Written by Mark Shperkin

function invNum = modInv(num, m)
    num = mod(num, m);
    for invNum = 1:m
        if mod(num * invNum, m) == 1
            return;
        end
    end
    error('Modular inverse does not exist.');
end

% modInv function calculates the modular inverse of a number num under modulo m.
% It returns the modular inverse invNum if it exists.
%
% Inputs:
% - num: the number for which the modular inverse is to be calculated.
% - m: the modulus.
%
% Output:
% - invNum: the modular inverse of num under modulo m.
%
% Usage in MATLAB/Octave:
% num = 3;
% m = 11;
% invNum = modInv(num, m);
% disp(['Modular inverse of ', num2str(num), ' under modulo ', num2str(m), ' is ', num2str(invNum)]);
