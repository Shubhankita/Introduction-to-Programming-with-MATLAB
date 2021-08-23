function[output] = echo_gen(input, fs, delay, amp)

l = length(input)
nodelay = round(delay*fs); 
echo = zeros(nodelay + l,1); 
bsv = echo; 

for i = 1:l 
    echo(i + nodelay) = input(i)*amp;
    bsv(i) = input(i); 
end

updatedsound = bsv + echo; 
r = abs(updatedsound); 
maxrangevalue = max(r);

if maxrangevalue>1 
   updatedsound = updatedsound/maxrangevalue; 
end

output = updatedsound; 

end 
