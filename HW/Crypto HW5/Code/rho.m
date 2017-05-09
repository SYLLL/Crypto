function output = rho(N)
%inputs a range 1...N
%outputs the product of (1-1/p^2) over all primes<N
x = 1;
for i = primes(N)
    x = double(x*(1 - double(1/i^2)));
end
output = double(x);
end

