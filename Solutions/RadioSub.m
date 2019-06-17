a = 0;      % start time
b = 8;      % end time
dt = 1/3;   % time interval

% initial number of Strontium atoms and Yttrium atoms
x0 = [5*10^26, 0];
% get the number of atoms in x
x = Euler(a, b, dt, x0);
disp('  Stronium  Yttrium');
disp(x);

function n = Euler(a, b, dt, x0)
    r1 = 0.256;            % rate of Strontium decay
    r2 = 0.127;            % rate of Yttrium decay
    m = (b - a)/dt;        % calculate number of intervals
    n = zeros(2, m);       % initialize m zeros
    n(1,1) = x0(1);        % store the initial no of Strontium atoms
    n(2,1) = x0(2);        % initial number of Yttrium atoms
    
    for i = 1:m-1
        n(1,i+1) = n(1,i) - r1*dt*n(1,i);
        n(2,i+1) = n(2,i) + r1*dt*n(1,i) - r2*dt*n(2,i);
    end
    n = n';
end

function f = lorenz(~, x)
    f = zeros(2,1);
    % two differential equations
    % dS/dt = -0.256*S;
    % dY/dt = 0.256*S - 0.127*Y
    f(1) = -0.256*x(1);
    f(2) = 0.256*x(1) - 0.127*x(2);
end