function [s] = halfsum (m)
s = 0;
[r c] = size(m);
for i = 1 : r
    for  j = 1 : c
        if(j >= i)
            s = s + m(i,j);
        end
    end
end
end
