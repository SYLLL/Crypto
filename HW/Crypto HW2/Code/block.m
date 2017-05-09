function [output]=block(input,direction,m)
% [output]=block(input,direction,m)
% when direction =+1
% this function breaks a row vector into 
% columns of height m
% when direction =-1 this is reversed

if direction==1
    l=length(input);
    n=ceil(l/m);
    output=97*ones(m,n);
    output=char(output);
    for j=1:l
        c=floor((j-1)/m)+1;
        r=j-m*(c-1);
        output(r,c)=input(j);
    end
end

if direction==-1
    [r,c]=size(input);
    output=[];
    for i=1:c
        output=[output input(:,i)'];
    end
end