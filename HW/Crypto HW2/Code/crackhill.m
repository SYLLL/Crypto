function [plaintext]=crackhill(snippetplaintext,ciphertext,blocklength)
%gets snippetplaintext, ciphertext and blocklength to 
%dicipher Hill cryptosystem
%numgroups denotes how many shifts will be made
snilen=length(snippetplaintext);
blocklengthsquare=blocklength*blocklength;
%subtracts blocklengthsquare to make sure there will always a r*r matrix
%during each shift
numgroups=floor((snilen-blocklengthsquare)/blocklength);
for i=0:numgroups-1
    %choose a sample r*r m matrix
    m = snippetplaintext(i*blocklength+1:i*blocklength+blocklengthsquare);
    mmatrix = block(m,1,blocklength);
    mmatrix = mmatrix-97;
    mmatrix = mod(mmatrix,26);
    d=det(mmatrix);
    d=round(d);
    %if m doesn't have an inverse matrix, go to another shift
    if d == 0 || mod(d,2)==0 || mod(d,13)==0
      continue;
    end
    recipd=powermod(d,-1,26);
    %m's inverse matrix
    Minv = recipd*d*inv(mmatrix);
    Minv=round(Minv);
    Minv=mod(Minv,26);
    verticalc = block(ciphertext,1,blocklength);
    verticalc = verticalc - 97;
    %gets the corresponding c matrix
    ciphercut = ciphertext(i*blocklength+1:i*blocklength+blocklengthsquare);
    verticalccut = block(ciphercut,1,blocklength);
    verticalccut = verticalccut - 97;
    %finds A matrix by computing c*m^-1
    %just in case A is not invertible(not necessary)
    A = mod(verticalccut*Minv,26);
    dA = det(A);
    dA = round(dA);
    if dA == 0 || mod(dA,2)==0 || mod(dA,13)==0
      continue;
    end
    recipdA=powermod(dA,-1,26);
    Ainv = recipdA*dA*inv(A);
    Ainv=round(Ainv);
    Ainv=mod(Ainv,26);
    %computes original plaintext real
    real=Ainv*verticalc;
    real=mod(real,26);
    real=block(real,-1,blocklength);
    plaintext = char(real+97);
end
end
