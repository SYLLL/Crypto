function output = squareroots(c,p,q)
%input two distinct primes p and q, which are both 3 mod 4
%input c
%output four squareroots m of pq such that m^2 = c mod p*q
output = [];
%n vector is always [p,q]
posp = fastexp(c,p,(p+1)/4);
negp = p-posp;
posq = fastexp(c,q,(q+1)/4);
negq = q-posq;
%get the vectors
n = [p,q];
b1 = [posp,posq];
b2 = [negp,posq];
b3 = [posp,negq];
b4 = [negp,negq];
%use chinese remainder theorem to compute square roots
m1 = crt(n,b1);
output = [output, m1];
m2 = crt(n,b2);
output = [output, m2];
m3 = crt(n,b3);
output = [output, m3];
m4 = crt(n,b4);
output = [output, m4];
end

