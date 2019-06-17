close all;
clear;
clc;
n = 100;           % number of simulations
p = 0.75;          % probability of doubling
E = 0;             % No. of extinctions
nth_pop = 0;       % population of the n-th generation
desired_gen = 25;  % the desired generation we want the mean population of

for i = 1:n        % begin simulation
    x(1) = 1;      % start with 1 bacteria
    alive = 1;     % currently, no of bacteria alive
    gen = 1;       % 1st generation
    pop(gen) = 1;  % population of the corresponding gen(=1 at first)
    for gen = 1:30    % run loop for 30 generations
        % generate as many random numbers as the alive bacteria count
        r = rand(1,alive); 
        % generate new matrix m with zeros = alive bacteria count
        m = zeros(1,alive);
        % for each value in r that is within 0.75, assign a 2 in m
        m(r<=p) = 2;
        x = ones(1,alive);  % create x as alive number of 1s
        x = x.*m;           % get the new distribution 
        alive = sum(x);     % get the number of bacteria alive
        pop(gen) = alive;   % store the population count for the gen
    end
    if (alive == 0)             % if at alive count is zero
        E = E + 1;              % update extinction count
    end
    % calculate the total number of population in the desired_gen = 25
    nth_pop = nth_pop + pop(desired_gen);    
end
pE = E/n;         % probability of extinction
mean_nth_pop = nth_pop/n;   % mean of 25th gen population
disp('Probability of extinction:')
disp(pE);
disp('Expected population  Actual Population')
disp([(2*p)^25 mean_nth_pop]);
    
