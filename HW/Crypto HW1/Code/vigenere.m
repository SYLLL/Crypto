function y = vigenere(txt, key);
% This function performs the Vigenere cipher on the plaintext in
%  the variable txt, using key (we assume the key is in numerical
%  representation).


xln=length(txt);

kln=length(key);


for j=1:xln,
   jmod=mod(j,kln);
   if jmod==0, 
      jmod=kln;
   end;   %map an index of 0 into an index of kln
   y(j)=shift(txt(j),key(jmod));
end;
