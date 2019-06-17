close all;      % deletes all open figures
clear;          % clears all variables in the workspace
clc;            % clears command window

% set up the variables
a1 = 500;
r = 0.1;
bal = a;
year = 0;
disp( '    Year    Balance')
while bal < 2 * a
    bal = bal + r * bal;
    year = year + 1;
    disp( [year bal] )
end


