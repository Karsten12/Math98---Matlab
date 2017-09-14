function total = g_2(n)
    total = 0;
    i = 1;
    while i < n+1
        if rem(i, 2) == 1
            total = total + i*(n-(i-1));
        else
            total = total - i*(n-(i-1));
        end
        i = i+1;
    end