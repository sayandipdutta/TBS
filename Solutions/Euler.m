function [t, n] = Euler(a, b, dt)
    r = 0.8;            % rate = 0.8
    m = (b - a)/dt;     % calculate number of intervals
    n = zeros(1, m+1);  % initialize m+1 zeros
    n(1) = 1000;        % store the starting population
    t = a:dt:b;         % formulate, and return t

    for i = 1:m
        n(i+1) = n(i) + r*dt*n(i);  % return n
    end
end


