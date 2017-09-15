function r = mySin(y)
n = 1:2:99;
r = rem(y,(2*pi));

for i=1:length(y)
    r(i) = sum((r(i).^(n)).*1./factorial(n).*(-1).^(0:49));
end

