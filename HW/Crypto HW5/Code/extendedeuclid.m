function output = extendedeuclid(a,b)
%we assume input a > b, if a < b, we swap them in the beginning
areal=a;
breal=b;
if a < b
    temp=a;
    areal=b;
    breal=temp;
end;
%initializing our matrix
output=[];
A=[];
Q=[];
X=[];
Y=[];
A(1)=areal;
A(2)=breal;
Q(1)=0;
X(1)=1;
X(2)=0;
Y(1)=0;
Y(2)=1;
i=2;
%do euclid algorithm until A(i) is 0
while A(i) > 0
    Q(i)=floor(A(i-1)/A(i));
    A(i+1)=A(i-1)-Q(i)*A(i);
    X(i+1)=X(i-1)+Q(i)*X(i);
    Y(i+1)=Y(i-1)+Q(i)*Y(i); 
    i=i+1;
end
%since in the end, i is 1 greater than the last i recorded in the matrix,
%and in matlab index 1 is actually index 0, these effects cancal out when
%we are deciding the signs of X and Y in the end
%the first column of output is gcd(a,b), second column is x, and third is y 
output=[output;A(i-1)];
output=[output;(-1)^(i)*X(i-1)];
output=[output;(-1)^(i+1)*Y(i-1)];
end

