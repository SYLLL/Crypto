function y = shift(x,b);
% This function performs the shift encryption function
%   y = x + b mod 26
% We assume that x is a text string and b is a number
% The result is kept in text representation

xnum=text2int(x);
ynum = mod(xnum + b, 26);
y=int2text(ynum);