function B=COUNT_SORT(A)
% A should be a subset of set Z
A1=-A(A<0);
A2=A(A==0);
A3=A(A>0);

B1=COUNT_SORT_ORIGIN(A1);
B3=COUNT_SORT_ORIGIN(A3);
B=[-B1(end:-1:1),A2,B3];
end




function B=COUNT_SORT_ORIGIN(A)
% A should be a subset of set N+ and size of A should not less than max(A)
k=max(A);
n=length(A);
B=zeros(1,n);
C=zeros(1,k+1);
for j=1:n
    C(A(j))=C(A(j))+1;
end
% C(i) now contains the number of elements equal to i
for i=2:k
    C(i)=C(i)+C(i-1);
end
% C(i) now contains the number of elements less than or equal to i
for j=n:-1:1
    B(C(A(j)))=A(j);
    C(A(j))=C(A(j))-1;
end
end