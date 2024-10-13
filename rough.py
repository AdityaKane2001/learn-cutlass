import numpy as np

a = np.zeros((5, 5))

a[0, 1] = 1
a[0, 2] = 1
a[0, 4] = 1
a[1, 2] = 1
a[1, 3] = 1
a[2, 3] = 1
a[3, 4] = 1

a = a + a.T

b = a @ a.T

c = b @ a.T

print(a)
print(b)
print(c)
