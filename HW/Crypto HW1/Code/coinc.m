function y = coinc(txt,n);
% This function returns the number of matches between txt and txt 
% shifted by n

xln=length(txt);

x=[zeros(size(xln-n+1:xln)) txt(1:xln-n)]; 
%The zeros are at the beginning because I needed filler when doing the compare
% One could wrap around the text, as in which case one would use 
% txt(xln-n+1:xln)

v=(txt==x);

y=sum(v);