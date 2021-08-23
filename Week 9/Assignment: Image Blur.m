function output = blur(img,w)
    ximg = double(img);
    [m, n] = size(img);
    output = zeros(m, n);
    for i = 1:m
        for j = 1:n
            a = i-w;
            b = i+w;
            c = j-w;
            d = j+w;
            if a < 1
                a = 1;
            end
            if b > m
                b = m;
            end
            if c < 1
                c = 1;
            end
            if d > n
                d = n;
            end
            A = ximg(a:b, c:d);
            output(i,j) = mean(A(:));
        end
    end
    output = uint8(output);
end
