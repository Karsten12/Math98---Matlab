function total = g_1(n)
    total = 0;
    for i = 1:n
        if rem(i, 2) == 1
            total = total + i*(n-(i-1));
        else
            total = total - i*(n-(i-1));
        end

end