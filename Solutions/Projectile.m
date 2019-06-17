close all;
clear;
clc;
% set up variables
dt = 0.5;                   % time interval
g = 9.8;                    % gravitational accelaration
u = 60;                     % initial speed
ang_degrees = 50;           % initial angle of shooting in degrees
ang = deg2rad(ang_degrees); % initial angle of shooting in radians
t = 0; x = 0; y = 0;        % initial time, horizontal displacement,
                            % and vertical displacement
disp('    Time   x     y')
while (y>=0)
    disp([t x y]);
    % new time
    t = t + dt;
    % vertical displacement
    y = u*sin(ang)*t - g*t^2/2;
    % horizontal displacement
    x = u*cos(ang)*t;
end

