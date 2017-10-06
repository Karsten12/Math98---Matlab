% Math98: Introduction to MATLAB Programming
% Assignment 5
% Karsten Fonseca

% Problem 1
% syms x(t)
% ode1 = diff(x,t) = x-y;
% ode2 = diff(y,t) = -2x + y;
% cond = x(0) + y(0) = 1l;
syms x(t) y(t)
eqns = [diff(x, t) == x-y, diff(y,t) ==-2*x+y];
cond = [x(0) ==1, y(0) == 1]
[xSol(t), ySol(t)] = dsolve(eqns, cond);
T = linspace(0, 3, 100);
plot(xSol(T), ySol(T));

f = @(t, Y) [1, 1;-2, 1]*Y;
[t Y] = my_Euler(f, [0, 3], [1, 1], 0.2);
plot(Y(:,1), Y(:,2)); hold on;
[t Y] = my_Euler(f, [0, 3], [1, 1], 0.1);
plot(Y(:,1), Y(:,2)); hold on;
[t Y] = my_Euler(f, [0, 3], [1, 1], 0.05);
plot(Y(:,1), Y(:,2)); hold on;
[t Y] = my_Euler(f, [0, 3], [1, 1], 0.025);
plot(Y(:,1), Y(:,2));

% Problem 2

f = @(t, y)y;
E = zeros(1, 6);
for i = 1:6
    [t Y] = my_Euler(f, [0, 1], 1, 0.5^i);
    E(i) = max(abs(Y-exp(t)));
end
plot(0.5.^(1:6), E)

% Problem 3
syms x(t)
d = 1;
x_0 = 1;
v_0 = 1;
t_interval = [0, 3];
eqns1 = [diff(x, t, 2) == d*x + x];
cond1 = [x(0)==x_0, diff(x) == v_0];
plot(Y(:,1), Y(:,2));

