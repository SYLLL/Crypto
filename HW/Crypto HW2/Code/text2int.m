function y = text2int (x)
% This function takes the letter in the string x and converts 
% it to an integer. 
% The convention for this function is
%   a  --> 0
%   b  --> 1
%   and so on...

if ( (x < 'a') | (x > 'z') ),
   error('Text character out of range a-z');
end;

y=x - 'a';   %It helps to know Matlab tricks
