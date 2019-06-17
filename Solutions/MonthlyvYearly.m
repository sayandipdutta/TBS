close all;          % deletes all open figures
clear;              % clears all variables in the workspace
clc;                % clears command window

% set up the variables
D = 1000;           % deposit
r = 1/100;          % convert 1% into fractions
y = 10;             % number of years
m = 12;             % number of months in year
monthlybal = D;     % balance for first month
yearlybal = monthlybal; % balance at the start of the year

% format bank         % set output format to two decimal points
disp('          Year       Balance')

% run for loop 10 times from 1 to number of years
for i = 1:y
    % run nested loop for 12 times
    for j = 1:m
        % update monthly balance
        monthlybal = monthlybal+monthlybal*r;
    end
    % update balance at the end of the year
    yearlybal = monthlybal;
    % display the balance
    disp([i yearlybal]);
end

% calculate balance if annual compounding with 12% rate
r = 12/100;
yearendbal = 100*(1 + 0.01)^12;
fprintf('Balance with annual compound rate of 0.12 -> %.2f\n',yearendbal);


