function T = coeff(X, Y, N)
    X = X';
    Y = Y';
    P = 2*pi/4*(1:N).*X;
    M = [ones(size(X)), cos(P), sin(P)];
    T = M\Y;
end