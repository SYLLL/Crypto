function [ substext ] = substitute( key,ciphertext )

m=length(ciphertext);
substext=42*ones(1,m);
substext=char(substext);
for i=1:m
    index=ciphertext(i)-96;
    if (index>0)&(index<27)
        substext(i)=key(index);
    end
end
end

