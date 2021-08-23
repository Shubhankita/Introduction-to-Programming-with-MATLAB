function indices=saddle(M)
[row,col]=size(M);
x=1;
for i=1:row
    for j=1:col
        if (M(i,j)==max(M(i,:)) | M(i,j)==M(i,:)) & (M(i,j)==min(M(:,j)) | M(i,j)==M(:,j))
            indices(x,1)=i; 
            indices(x,2)=j;
            x=x+1;
        end
    end
end
if x==1
    indices=[]; 
    return
end
end
