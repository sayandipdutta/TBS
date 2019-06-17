close all;
clear;
clc;
% set up variables
n = 100;           % number of walks
p = 0.75;           % number of times he ends up at home

for i = 1:n         % simulate n times
    x = 1;          % starting position 2nd intersection
    
    while (x~=0 && x~=1000)    % while he is not at home or cafe
        r = rand;            % random number probability
        if (r <= 0.75)       % if probability within 1/3
            x = 2*x;      % go towards home
        else                % otherwise go towards cafe
            x = x + 1;
        end 
    end
    
    if (x == 1)             % if at home
        home = home + 1;
    end
end
phome = 100*home/n;         % probability of reaching home
pcafe = 100 - phome;        % probability of reaching cafe

disp([phome pcafe]);
    
