function output = crt(n,b)
%takes input vectors n and b, returns x
%which is congruent to each respective entry of b modulo
%the respective entry of n
%x is nonnegative and less than the product of entries
%of n
ln = length(n);
lb = length(b);
%check if two vectors are of different length
if ln ~= lb
    output='two vectors do not have equal length!';
    return
end
%check if input vectors have length less than 5
if ln < 5
    output='vector length is shorter than 5!';
    return
end
smalln = 1;
%check if entries in n are nonzero and pairwise relatively prime
%in the same time compute their product
for i=1:ln
    if n(i) == 0
        output='entry in n cannot be 0!';
        return
    end
    for j=1:i-1
        temp = extendedeuclid(n(j),n(i));
        if temp(1) ~= 1
            output='entries in n are not pairwise relatively prime!';
            return
        end
    end
    smalln = smalln * n(i);
end
x = 0;
%computes x
for k=1:ln
    bign = smalln/n(k);
    bigninv = inverse(bign,n(k));
    x = x + b(k) * bign * bigninv;
end
output = mod(x,smalln);
