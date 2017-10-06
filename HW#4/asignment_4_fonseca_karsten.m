% Math98: Introduction to MATLAB Programming
% Assignment 4
% Karsten Fonseca

% Problem 1
x = linspace(-pi,pi, 600);
y = linspace(-pi,pi, 600);
[X,Y] = meshgrid(x,y);

f = @(x,y) cos(x).*sin(y) + 2*exp(-x.^2.-6*y.^2.);
Z = f(X,Y);
surfc(X,Y,Z);

map = [1, 0, 0
    1, 0, 0
    1, 0, 0
    1, 0, 0
    1, 0, 0
    1, 0, 0];
colormap(map);
c = light;
shading('interp')
c.Position = [-1, 0, 1];

% Problem 2

dx = diff(Z, 1, 2);
bx = abs(dx) < 10^(-4);
dy = diff(Z, 1, 1);
by = abs(dy) < 10^(-4);

criticalpts = logical(bx(1:599, :).*by(:, 1:599));
Xt = X(1:599, 1:599);
Yt = Y(1:599, 1:599);
Zt = Z(1:end-1, 1:end-1);

hold on;
scatter3(Xt(criticalpts), Yt(criticalpts), Zt(criticalpts));

% Problem 3

%Monte Carlo Method
min=-pi;
max=pi;
n=2000;
idk=min+rand(1,n)*(max-min);
idk2=min+rand(1,n)*(max-min);
Z1 = f(idk, idk2);
heightDiff = Z1+1;
volume = sum(heightDiff); % 2.16

integVal = integral2(f,-pi,pi,-pi,pi); %2.5651

