Vector = [8 2 4 9 3 6];
for j = 2:length(Vector)
    key = Vector(j);
    i = j - 1;
    while(i>0 && Vector(i)>key)
        Vector(i+1) = Vector(i);
        i = i - 1;
    end
    Vector(i+1) = key;
end
disp(Vector);