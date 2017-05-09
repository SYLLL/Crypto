function output = vigenerek(input)
% This function calculates output = the vigenere key of given ciphertext
output=[];
A=[];
%calculate number of matches
for i=1:length(input)
    A=[A; coinc(input,i)];
end
%see which is the first burst
%threshold = 0.06 which is little less than 0.066 to handle small
%fluctuation
thd=0.06*length(input);
%initialization
blocklength=1;
%blocklength cannot be greater than 26 since no duplicate shifts within a
%key
%double check the blocklength in case of coincidence
for i=1:25
    if (A(i)>thd && A(5*i)>thd) || (A(i)>thd && A(4*i)>thd) || (A(i)>thd && A(3*i)>thd) || (A(i)>thd && A(2*i)>thd)
       blocklength=i;
       break
    end
end
%get relative frequency of each chosen parts, and calculate innerproducts
%to determine actual shifts
for j=1:blocklength
    s=choose(input,blocklength,j);
    [f, relf]=zfrequency(s);
    cr=corr(relf);
    [val,pos]=max(cr);
    output=[output;pos-1];
end
