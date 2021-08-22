function [summa, index] = max_sum (v,n)
l=length(v);
if(n>l)
    summa = 0;
    index = -1;
    return;
end

summa = -inf;
index =-1;

for i = 1:l-n+1
    x = v(i:(i+n-1));
    y = sum(x);
    if y > summa
        summa = y;
        index = i;
    end
end
end
