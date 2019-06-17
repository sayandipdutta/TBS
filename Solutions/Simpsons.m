close all;
clear;
clc;

T = 3500;           % temp in K
a = 4*10^-5;        % lower limit
b = 7*10^-5;        % upper limit
h1 = (b - a)/10;    % n = 5
h2 = (b - a)/20;    % n = 10

E1 = (64.77*T^-4)*simp(@fn,a,b,h1); % n = 5
E2 = (64.77*T^-4)*simp(@fn,a,b,h2); % n = 10
fprintf('E=%.6f, when n = 5; and E=%.6f when n = 10\n',E1,E2);

function y = simp( fn, a, b, h )
n = (b-a)/(2*h);        % calculate n
% summation x2i means, x = a + 2*i*h
x1 = a + 2*[1:n-1]*h;       
x2 = a + (2*[1:n] - 1)*h;   
y1 = sum(feval(fn, x1));    % 1st sum term in Simpson's rule
y2 = sum(feval(fn, x2));    % 2nd sum term in Simpson's rule
y = h/3*(feval(fn, a) + feval(fn, b) + 2*y1 + 4*y2);
end

function y = fn(x)
    % formulate the function
    y = 1./(x.^5.*(exp(1.432./(3500.*x)) - 1));
end

