function output = fastexp(a,n,k)
%input a, n, k, output = a^k mod n

%convert k to base 2 representation
array = [];
while k > 0
    bit = mod(k,2);
    quotient = floor(k/2);
    array = [array, bit];
    k = quotient;
end
len = length(array);
array_mod = [];
ans = a;
%compute a^(2^i) for each i
for i = 1:len
    ans = mod(ans, n);
    array_mod = [array_mod, ans];
    ans = ans^2;
end
%output = array_mod;
%compute the final answer
output = 1;
for j = 1:len
    if array(j) == 1
        output = output*array_mod(j);
        output = mod(output, n);
    end
end
