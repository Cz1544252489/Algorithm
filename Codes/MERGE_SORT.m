function A=MERGE_SORT(A,p,r)
%  INSERTION_SORT sort vector A by MERGE
%  INPUT: a vector A
%  OUTPUT: a sorted vector A
if nargin<2
    p=1;r=length(A);
end
if p<r
    q=floor((p+r)/2);
    A=MERGE_SORT(A,p,q);
    A=MERGE_SORT(A,q+1,r);
    A=MERGE(A,p,q,r);
end
end

function A=MERGE(A,p,q,r)
n_1=q-p+1;
n_2=r-q;
L=zeros(1,n_1+1);
R=zeros(1,n_2+1);
for i=1:n_1
    L(i)=A(p+i-1);
end
for j=1:n_2
    R(j)=A(q+j);
end
L(n_1+1)=inf;
R(n_2+1)=inf;
i=1;j=1;
for k=p:r
    if L(i)<=R(j)
        A(k)=L(i);
        i=i+1;
    else
        A(k)=R(j);
        j=j+1;
    end
end
end