close all;
clear;
clc;

n = 100000;         % number of simulations
DFIIcrash = 0;      % number of DFII crashes
DFIVcrash = 0;      % number of DFIV crashes

for i = 1:n         % for n iterations
    % call rand twice, and see if both the time it
    % is below 0.5, if yes, the plane crashes
    if (rand < 0.5) && (rand < 0.5)
        DFIIcrash = DFIIcrash + 1;
    end
    DFIVEng = rand(1,4);    % store 4 random numbers
    % store how many random numbers are below 0.5
    failed = sum(DFIVEng < 0.5);
    if failed > 2           % if failure is greater than 2
        DFIVcrash = DFIVcrash + 1;  % plane crash
    end
end
pDFII = DFIIcrash/n;        % crash probability of DFII
pDFIV = DFIVcrash/n;        % crash probability of DFIV

disp('   DFII failure DFIV failure');
disp([pDFII pDFIV]);

