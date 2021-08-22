function coded = caesar(s,n)
f = double(' ');
l = double('~');
s = double(s);
s = s + n;
coded = char(mod(s-f,l-f+1)+f);
