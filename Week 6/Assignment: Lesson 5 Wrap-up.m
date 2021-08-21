function valid = valid_date(year, month,day)
if nargin == 3
    if ~isscalar(year) || year < 1 || year ~= fix(year)
        valid = false;
        return
   elseif ~isscalar(month) || month < 1 || month ~= fix(month)
       valid = false;
       return
    elseif ~isscalar(day) || day < 1 || day ~= fix(day)
        valid = false;
        return
    end
end
m30 = [4 6 9 11];
m31 = [1 3 5 7 8 10 12];
d31 = (1:31);
d30 = (1:30);
lfeb = (1:29);
feb = (1:28);
lx = year/4;
ly = year/400;
lz = year/100;

if lx~= fix(lx) || (ly ~= fix(ly) && lz == fix(lz))
    if ismember(month,m30) && ismember(day,d30)
        valid = true;
    elseif ismember(month,m31) && ismember(day,d31)
        valid = true;
    elseif month==2 && ismember(day,feb)
        valid = true;
    else
        valid = false;
    end
elseif lx == fix(lx) || ly == fix(ly)
    if ismember(month,m30) && ismember(day,d30)
        valid = true;
    elseif ismember(month,m31) && ismember(day,d31)
        valid = true;
    elseif month==2 && ismember(day,lfeb)
        valid = true;
    else
        valid = false;
    end   
end

end 
