function A=HEAP_SORT(A)
[A,heap_size]=BUILD_MAX_HEAP(A);
for i=length(A):-1:2
    [A(1),A(i)]=exchange(A(1),A(i));
    heap_size=heap_size-1;
    A=MAX_HEAPIFY(A,1,heap_size);
end
end

%%  dual function
function [A,heap_size]=BUILD_MAX_HEAP(A)
heap_size=length(A);
for i=floor(length(A)/2):-1:1
    A=MAX_HEAPIFY(A,i,heap_size);
end
end

function A= MAX_HEAPIFY(A,i,heap_size)
%MAX_HEAPIFY maintain the MAX_HEAP
l=LEFT(i);
r=RIGHT(i);
if l<=heap_size && A(l)>A(i)
    largest=l;
else
    largest=i;
end
if r<=heap_size && A(r)>A(largest)
    largest=r;
end
if largest~=i
    [A(i),A(largest)]=exchange(A(i),A(largest));
    A=MAX_HEAPIFY(A,largest,heap_size);
end
end



%%
function i=LEFT(i)
i=2*i;
end

function i=RIGHT(i)
i=2*i+1;
end

% function i=PARENT(i)
% i=floor(i/2);
% end

function [x,y]=exchange(x,y)
temp=x;x=y;y=temp;
end