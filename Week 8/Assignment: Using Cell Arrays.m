function matrix = sparse2matrix(cellvec)
order = cell2mat(cellvec(1));
x = order(1); 
y = order(2);
default = cell2mat(cellvec(2));
matrix = default * ones(x, y);
l = numel(cellvec);
    
for i = 3:l
    val = cell2mat(cellvec(i));
    matrix(val(1), val(2)) = val(3);   
end
end
