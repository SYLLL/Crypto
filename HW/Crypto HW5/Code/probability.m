function output = probability(M,N)
%do this N times: randomly selects 2 integers 1-M
%and test if it is relatively prime to each other
%outputs probability of them being relatively prime
n = 0;
for i=1:N
    first = round(rand(1)*M);
    second = round(rand(1)*M);
    temp = extendedeuclid(first,second);
    %increment n count when two integers are relatively prime
    if temp(1) == 1
        n = n+1;
    end
end
output = double(n/N);
end

