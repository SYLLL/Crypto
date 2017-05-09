function output = rz(N)
%takes input of N 
%returns the summation of 1/n^2 of n from 1 to N
x = 0;
for i = 1:N
    x =(x+(1/i^2));
end
output = double(x);
end

