function [freq,relfreq]=zfrequency(text)

%  [freq,relfreq]=zfrequency(text) gives 
%  the frequency and relative frequency 
%  for the letters in the text

freq=zeros(26,1);
le=length(text);
for i=1:le
    freq(text(i)-96)=freq(text(i)-96)+1;
end
relfreq=freq/le;
