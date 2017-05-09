function y = corr(v);
% This function calculates the dot product of the vector v with the
%  26 shifts of the alphabet frequency vector

[vx,vy]=size(v);

% If v is the a column vector instead of a row vector, we transpose
% to make everything ok
if (vx==26) & (vy==1), 
   v = v';   
end

if (~((vx==26) | (vx==1))) | (~((vy==26) | (vy==1))) ,
   error('The vector v needs to be 26x1 or 1x26');
end


fvec=[.082 .015 .028 .043 .127 .022 .020 .061 .070 .002 ...
      .008 .040 .024 .067 .075 .019 .001 .060 .063 .091 ...
      .028 .010 .023 .001 .020 .001];


%Loop over all shifts
y=zeros(26,1);
for j=0:25,
   % fsh=[fvec(1+j:26) fvec(1:1+j-1)]; % my way
   fsh=[fvec(26-j+1:26) fvec(1:26-j)]; % Dr. W's way
   y(j+1)=v*fsh';
end
