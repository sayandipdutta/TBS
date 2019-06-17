close all;
clear;
clc;

mu = 460;                       % Mean
sigma = 20;                     % standard deviation

for i = 1:5                     % run 5 simulations
    for j = 1:200               % run 200 times
        r = randn(1,200);       % generate 200 random normal numbers
        X(j,:) = sigma*r + mu;  % change the mean and standard deviation
    end
    X(i,:) = mean(X);           % get the mean distribution from 200 runs
    figure()                    % call new figure window
    hist(X(i,:),10);            % show histograms
end


