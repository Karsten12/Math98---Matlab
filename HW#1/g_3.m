function s = g_3(n)
    v = 1:n;
    s = sum((2*mod(v,2)-1).*v.*v(n:-1:1),2);
end

% Here v  is the vector [1 ... n]
% v(n:-1:1) gives [n ... 1]
% 2*mod(v,2)-1 gives 1 -1 1 -1 ... 1
% multiply termwise and that gives all the terms, then sum by direction 2.