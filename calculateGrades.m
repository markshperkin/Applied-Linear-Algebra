% Written by Mark Shperkin

function curvedGrades = calculateGrades(grades)

    total = 0;
    n = length(grades);
    for i = 1:n
        total = total + grades(i);
    end
    meanGrade = total / n;

    curvedGrades = (70 * grades) / meanGrade;
end

% calculateGrades function adjusts a vector of grades so that the new mean of the grades is 70.
%
% Inputs:
% - grades: a vector of numerical grades.
%
% Output:
% - curvedGrades: a vector of curved grades with a mean of 70.
%
% Usage in MATLAB/Octave:
% grades = [80, 85, 90, 70, 60];
% curvedGrades = calculateGrades(grades);
% disp(curvedGrades);
