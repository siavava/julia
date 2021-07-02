import math

A = [1, 2, 3, 4]
B = A
B.append(7)
A.append(9)
print(A)
print(B)

def dosomestuff(var):
    print(str(var))
    
dosomestuff(291)
dosomestuff("what")
dosomestuff(False)
dosomestuff(math.pi)