close all;
clear;
clc;
% set up variables
dt = 0.1;                   % time interval
V = 9;                      
R = 4;                     
C = 1;           
t = 0;                      % intial time
Q = C*V*(1 - exp(-t/(R*C)));% initial charge
disp('         t         Q');
while (Q < 8)
    disp([t Q])
    t = t + dt;
    Q = C*V*(1 - exp(-t/(R*C)));
end

