function [distance] = get_distance(a,b)
[n,t] = xlsread('Distances.xlsx');
r =-1;
c =-1;
c1 = t(1,:);
c2 = t(:,1);
for i=2:numel(c1)
    if strcmpi(a,c1(i))
        r = i;
    else
        continue;
    end
end
for i=2:numel(c2)
    if strcmpi(b,c2(i))
        c = i;
    else
        continue;
    end
end
if r ==-1||c==-1
    distance=-1;
else
    distance = n(r-1,c-1);
end
end
