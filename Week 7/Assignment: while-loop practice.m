function [k] = next_prime(n)
s = n + 1;
while s>n
    if isprime(s)
        k = s;
        break;
    else
        s = s+1;
    end  
end
end
