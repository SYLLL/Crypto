function output = inverse(a,n)
%We assume the input a and n are relatively prime
%Since xa = qn + 1, we find xa - qn = 1
%we use extended euclid algorithm as subroutine
%we don't care what q is since we only need x
%if a<n, extendedeuclid will give us temp(3) as x
temp = extendedeuclid(a,n);
output=mod(temp(2),n);
if a<n
    output=mod(temp(3),n);
end

if temp(1) == a || temp(1) == n
   output='a is not invertible!'; 
end

if a == 0 || n == 0
   output='a or n cannot be 0, not invertible!'; 
end
end

