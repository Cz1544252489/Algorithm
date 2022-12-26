function A = QUICK_SORT(A,p,r)
%  INSERTION_SORT sort vector A by QUICK_SORT
%  INPUT: a vector A
%  OUTPUT: a sorted vector A
if nargin<2
    p=1;r=length(A);
end
if p<r
    [A,q]=PARTITION(A,p,r);
    A=QUICK_SORT(A,p,q-1);
    A=QUICK_SORT(A,q+1,r);
end
end

function [A,output]=PARTITION(A,p,r)
x=A(r);
i=p-1;
for j=p:r-1
    if A(j)<=x
        i=i+1;
        [A(i),A(j)]=exchange(A(i),A(j));
    end
end
[A(i+1),A(r)]=exchange(A(i+1),A(r));
output=i+1;
end


function [x,y]=exchange(x,y)
temp=x;x=y;y=temp;
end