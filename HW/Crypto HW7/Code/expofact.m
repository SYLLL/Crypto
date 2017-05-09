function output = expofact(a,k,n)
%input positive integers a, k, and n such that a^k = 1 mod n
%output nontrivial integers d1, d2 such that d1*d2 = n
output = [];
b = k;
s = 0;
%compute k = 2^s*b
while mod(b,2) ~= 1
    b = b/2;
    s = s+1;
end
%computes mu_i
mu_zero = fastexp(a,n,b);
mu = [];
mu = [mu, mu_zero];
b1 = 0;
b2 = 0;
for i = 1:s
    ans = mod(mu(i)^2,n);
    mu = [mu, ans];
    if ans == 1
        if mu(i)~= -1
            b1 = extendedeuclid(mu(i)-1,n);
            output = [output, b1(1)];
            b2 = extendedeuclid(mu(i)+1,n);
            output = [output, b2(1)];
            break;
        else
            output = 'fails';
            break;
        end
    end
end
        

