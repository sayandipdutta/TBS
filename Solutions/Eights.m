close all;
clear;
clc;

Awins = 0;      % number of times A wins
Bwins = 0;      % number of times B wins
n = 100000;     % number of simulations to run

for i = 1:n                             % run n simulations
    total = 0;                          % running total 0
    while (1)                           % continue loop
        A = floor(3 * rand + 1);        % Generate a number among 1,2,3
        total = total + A;              % add A to running total
        if total == 8                   % if total is exactly 8
            Awins = Awins + 1;          % A wins
            break;                      % break from loop
        end
        if total > 8                    % if total more than 8
            Bwins = Bwins + 1;          % B wins
            break;                      % break from loop
        end
        if (A == 1)                     % if A is 1
            B = 1 + floor(2*rand + 1);  % generate either 2 or 3
        elseif (A == 3)                 % if A is 3
            B = floor(2*rand) + 1;      % generate either 1 or 2
        else                            % otherwise
            B = 2*floor(2*rand) + 1;    % generate either 1 or 3
        end
        total = total + B;              % add B to running total
        if total == 8                   % if total is 8
            Bwins = Bwins + 1;          % B wins
            break;
        end
        if total > 8                    % if total more than 8
            Awins = Awins + 1;          % A wins
            break;
        end
    end
end
Awin_chance = Awins/n*100;              % Chances of A winning in percent
Bwin_chance = Bwins/n*100;              % Chances of B winning in percent
disp('       A wins       B wins');
disp([Awin_chance Bwin_chance]);

