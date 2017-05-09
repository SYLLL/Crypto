function y = int2text (x)
% This function takes the number in the variable x and converts 
% it to a character y. 
% The convention for this function is
%   a  <-- 0
%   b  <-- 1
%   and so on...

if ( (x < 0) | (x > 25) ),
   error('Integer out of range 0 - 26');
end;

y=char(x + 'a');   %It helps to know Matlab tricks
