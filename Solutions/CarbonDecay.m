close all;
clear;
clc;

k = 0.0338;         % decay rate
n = 100;            % number of undecayed atoms
f = zeros(1,100);   % intialize f as 100 zeros 

for t = 1:100       % loop for 100 seconds
    for C = 1:n     % loop for undecayed atoms
        r = rand;   % generate random number
        if r<=k             % if random number < 0.0338
            f(t)=f(t)+1;    % atom will decay
        end
    end
    R(t) = 100 - sum(f(1:t));   % remaining atoms
    Rt(t) = 100*exp(-k*t);      % theoritcal remaining atoms
    n = R(t);                   % update the number of undecayed atoms
end
bar(R);                         % plot R
hold on                         % hold the graphics for superimposing
bar(Rt);                        % plot Rt on the same graph
legend('Actual','Theoritical'); % mark the two bar graphs by color
xlabel('Time (minutes)');       % label the axes
ylabel('Undecayed atoms');

            
