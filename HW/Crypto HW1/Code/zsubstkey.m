function [ciphertext,key]=zsubstkey(plaintext)
%
%  [ciphertext,key]=zsubstkey(plaintext) encrypts 
%  English plaintext using a random substitution
%  cipher "key", (key is given for reference)

plaintext=plaintext-97;
pmn=randperm(26);
pm=[pmn-1;[0:25]];
key=char(pm+97);
le=length(plaintext);
ciphertext=zeros(1,le);
for i=1:le
    ciphertext(i)=pmn(plaintext(i)+1)-1;
end
ciphertext=char(ciphertext+97);