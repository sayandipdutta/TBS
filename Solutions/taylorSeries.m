close all;      % deletes all open figures
clear;          % clears all variables in the workspace
clc;            % clears command window

% set up the variables
x_in_degrees = 85;      % set up an angle in degrees
x_in_rad = deg2rad(x_in_degrees);   % convert angle in radian

true_cos = cos(x_in_rad);   % true value of cos(85)
term = 1;                   % start with 1 term
new_cos = 1;                % for 1 term value of taylor series is 1

% set up condition for while loop
while(abs(true_cos-new_cos) > 0.0001)
    % increment the number of terms
    term = term + 1;
    % calculate the power of x
    power = (term - 1)*2;
    % calculate the sign of the term
    sign = (-1)^(term + 1);
    % calculate taylor series sum
    new_cos = new_cos + sign*((x_in_rad)^power/factorial(power));
end

% print number of terms taken to get 4 decimal places accuracy
fprintf('%d terms needed to get 4-decimal place accuracy\n',term);




