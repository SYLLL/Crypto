function [mostfreq] = FindMostFreq( text, n, m )

% Written by Bo Liu
% returns the m most frequent n-grams in text
% n can only be 2,3,or 4

if n == 2
    freq=zeros(26,26);
    % freq is the matrix to store the frequency of every
    %  two letter combination
    
    % the loops to go over all the two-letter combinations
    for a=1:26
        for b=1:26
            char_a=char(a+96);char_b=char(b+96);
            freq(a,b)=length(strfind(text,strcat(char_a,char_b)));
            % strfind() returns all the occurence of the string
            %  strcat(char_a,char_b) in text
        end
    end

    mostfreq = cell(m,2);
    % the return vector mostfreq contains two columns
    % column 1 is the m highest frequency
    % column 2 is the corresponding n-letter strings

    [a,b]=find(freq==max(max(freq)),1,'first');
    mostfreq(1,1) = num2cell(max(max(freq)));
    mostfreq(1,2) = cellstr(strcat(char(a+96),char(b+96)));

    if m>1
        for i = 2:m
            freq(a,b)=0;
            [a,b]=find(freq==max(max(freq)),1,'first');
            mostfreq(i,1) = num2cell(max(max(freq)));
            mostfreq(i,2) = cellstr(strcat(char(a+96),char(b+96)));
        end
    end
end

if n == 3
    freq=zeros(26,26,26);
    for a=1:26
        for b=1:26
            for c=1:26
                char_a=char(a+96);char_b=char(b+96);char_c=char(c+96);
                freq(a,b,c)=length(strfind(text,strcat(char_a,char_b,char_c)));
            end
        end
    end

    mostfreq = cell(m,2);

    [a,b]=find(freq==max(max(max(freq))),1,'first');
    c=floor(b/26)+1;
    b=b-(c-1)*26;
    mostfreq(1,1) = num2cell(max(max(max(freq))));
    mostfreq(1,2) = cellstr(strcat(char(a+96),char(b+96),char(c+96)));

    if m>1
        for i = 2:m
            freq(a,b,c)=0;
            [a,b]=find(freq==max(max(max(freq))),1,'first');
            c=floor(b/26)+1;
            b=b-(c-1)*26;
            mostfreq(i,1) = num2cell(max(max(max(freq))));
            mostfreq(i,2) = cellstr(strcat(char(a+96),char(b+96),char(c+96)));
        end
    end
end


if n == 4
    freq=zeros(26,26,26,26);
    for a=1:26
        for b=1:26
            for c=1:26
                for d=1:26
                    char_a=char(a+96);char_b=char(b+96);
                    char_c=char(c+96);char_d=char(d+96);
                    freq(a,b,c,d)=length(strfind(text,strcat(char_a,...
                        char_b,char_c,char_d)));
                end
            end
        end
    end

    mostfreq = cell(m,2);

    [a,b]=find(freq==max(max(max(max(freq)))),1,'first');
    c=floor(b/26)+1;
    b=b-(c-1)*26;
    d=floor(c/26)+1;
    c=c-(d-1)*26;
    mostfreq(1,1) = num2cell(max(max(max(max(freq)))));
    mostfreq(1,2) = cellstr(strcat(char(a+96),char(b+96),...
                    char(c+96),char(d+96)));

    if m>1
        for i = 2:m
            freq(a,b,c,d)=0;
            [a,b]=find(freq==max(max(max(max(freq)))),1,'first');
            c=floor(b/26)+1;
            b=b-(c-1)*26;
            d=floor(c/26)+1;
            c=c-(d-1)*26;
            mostfreq(i,1) = num2cell(max(max(max(max(freq)))));
            mostfreq(i,2) = cellstr(strcat(char(a+96),char(b+96),...
                            char(c+96),char(d+96)));
        end
    end
end

