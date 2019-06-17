close all;
clear;
clc;

r= input('Enter the value of r = ');
b= input('Enter the value of b = ');
a= input('Enter the value of a = ');
x= input('Enter intial population x = ');
t= input('Enter the value for t = ');

x = Euler(a, b, r, t, x);
disp('         time   population');
time = 1:24;
disp([time' x]);

function n = Euler(a, b, r, t, x)
    m = (24 - 1)/t;        % calculate number of intervals
    n = zeros(1, m+1);     % initialize m zeros
    n(1) = x;              % store the initial no of Strontium atoms
    
    for i = 1:m
        n(i+1) = n(i) + (r - b*x*sin(a*t))*x;
    end
    n = n';
end