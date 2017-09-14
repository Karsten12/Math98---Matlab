function total = g_4(i, b)
if rem(i, 2) == 1
            total = i*(b-(i-1));
        else
            total = total - i*(b-(i-1));
        end