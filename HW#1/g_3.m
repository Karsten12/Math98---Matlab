function total = g_3(n)
    arr = 1:1:n;
    b = n; 
    l = g(x,b);
    arr2 = arrayfun(l,arr);
    total = sum(arr2);