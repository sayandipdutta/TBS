close all;          % deletes all open figures
clear;              % clears all variables in the workspace
clc;                % clears command window

% set up the variables
A = 1000;
r = 4/100;          % convert 4% into fractions
k = 10;
n = 1;

%% calculate V using the first formula (Eq. I)
% run for loop 10 times from 1 to 10
for i = 1:10
    V = A*(1 + (r/n))^(n*k);        % Eq. I
    % print the value of V after each iteration
    % %d is the format specifier for integers that is n
    % %f is format specifier for float, .2 indicates print only
    % upto 2 decimal places.
    fprintf('Investment after %d iteration(n = %d): %.2f\n',i,n,V);
    n = n*2;                        % double n
end


%% calculate V using the second formula (Eq. II)

V = A*exp(r*k);                     % Eq. II
fprintf('\nInvestment with the second formula: %.2f\n',V);


