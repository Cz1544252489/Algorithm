import numpy as np
Vector = np.array([8, 2, 4, 9, 3, 6])
for j in range(1, len(Vector)):
    key = Vector[j]
    i = j -1;
    while i>=0 and Vector[i]>key:
        Vector[i+1] = Vector[i]
        i = i -1
    Vector[i+1] = key
print(Vector)