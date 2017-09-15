function result = pwError(input)
% Function to perform pointwise error calculations
C = (2*pi)/101
x = -1*pi:C:pi
SNF_1 = zeros(5,101)
for n = 1:5
    for m = 1:101      
        SNF_1(n, m) = (sin(2*n+1)*x(m))/(2*n+1)
    end
end

f = @(y) (y / abs(y))
ERR = arrayfun(f, x)


        