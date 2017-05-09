function m = solversa(n,e,c)
%inputs public RSA key n,e and ciphertext c
%outputs plaintext m
y = sqrt(n);
%first find p,q that factorizes n
p = 1;
q = 1;
%factorizing n into p,q
%we only need to test first sqrt(n) elements to make 
%the algorithm faster
for i = 2:y
    if mod(n,i) == 0
        p = i;
        q = n/p;
        break;
    end
end
%then compute phi(n)
phi = (p-1)*(q-1);
%find the decryption key
d = inverse(e,phi);
%decrypt c
m = fastexp(c, n, d);
end

