close all;
clear;
clc;

[t, N1] = Euler(0, 5, 0.5);     % get the value of t and N1, with dt = 0.5
[~, N2] = Euler(0, 5, 0.05);    % get only the population (N2), dt = 0.05
exact = N1(1)*exp(0.8*t);       % get exact value
N2 = N2(1:10:101);              % get same number of population as N1
format bank
disp('          time       t = 0.5      t = 0.05         exact');
disp([t' N1' N2' exact'])


