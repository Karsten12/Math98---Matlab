function result = pwError(NUM)
% Function to perform pointwise error calculations
x = linspace(-1*pi, pi, 101);
f = @(y) (y / abs(y));
SNF_1 = zeros(NUM,101);

for n = 1:NUM
    for m = 1:101      
        SNF_1(n, m) = (sin(2*n+1)*x(m))/(2*n+1);
    end
end

snf_x = SNF_1(NUM, :); 
f_x = arrayfun(f, x);
ERR = abs(f_x - snf_x);

plot(x, ERR); hold on;
plot(x, SNF_1);
max_err = max(ERR);
avg_err = mean(ERR, 2, 'omitnan');

result = [max_err, avg_err];




        