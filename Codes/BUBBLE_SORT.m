function [A] = BUBBLE_SORT(A)
%  INSERTION_SORT sort vector A by BUBBLE_SORT
%  INPUT: a vector A
%  OUTPUT: a sorted vector A
for i=1:length(A)
    for j=length(A):-1:i+1
        if A(j)<A(j-1)
            temp=A(j);
            A(j)=A(j-1);
            A(j-1)=temp;
        end
    end
end
end