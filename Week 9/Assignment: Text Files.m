function charnum = char_counter(fname,character)
fid = fopen(fname, 'rt');
if fid < 0 
    charnum = -1;
    return;
end
l = fgets(fid);
str = [l];
while ischar(l)
    l=fgets(fid);
    str =[str l];
end
c=0;
if (ischar(character))
    for i=1:numel(str)
        if character == str(i)
            c =c+1;
        else
            continue
        end
    end
    charnum=c;
else
    charnum =-1;
end
end
    
