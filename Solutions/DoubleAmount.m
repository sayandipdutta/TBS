close all;      % deletes all open figures
clear;          % clears all variables in the workspace
clc;            % clears command window
% set up the variables
x_in_degrees = 15;
x_in_rad = deg2rad(x_in_degrees);

true_cos = cos(x_in_rad);
term = 1;
new_cos = 1;

while(abs(true_cos-new_cos) > 0.001)
    term = term + 1;
    power = (term - 1)*2;
    sign = (-1)^(term + 1)
    new_cos = new_cos + sign*((x_in_rad)^factor/factorial(factor));
end
disp([true_cos new_cos])
fprintf('%d terms needed to get 4-decimal place accuracy\n',term);




