close all;
clear;
clc;

b = 1;
eps = rand;     % eps in range 0.01 to 1.0
x0 = [0 1];     % intial values
[t, x] = ode23(@vdp, [0 12], x0, [], eps, b);
plot(x(:,1),x(:,2));

function f = vdp(~, x, eps, b)
    f = zeros(2,1);
    f(1) = x(2);
    f(2) = eps*(1-x(1)^2).*x(2) - b^2*x(1);
end

