function y=choose(txt,m,n)
% This function extracts every letter from the string txt that has positions
%  congruent to n (mod m)

xln=length(txt);
y=txt(n:m:xln);