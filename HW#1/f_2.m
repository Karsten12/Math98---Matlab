function total = f_2(n)
    total = 0;
    i = 1;
while i < n+1
    total = total + i^(1/i);
    i = i +1;
end

