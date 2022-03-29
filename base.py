import numpy as np

def base():
    """
    Using this code you can convert your number
    in Decimal to other base system. Output will be a vector.
    author: Alireza Kabgani
    e-mail: a.kabgani@gmail.com
    """
    a1 = int(input("Enter your number in the decimal base: "))
    b = int(input ("Enter the base number: "))
    i=1
    a=[a1]
    qu=[]
    r=[]
    while True:
        r.append(a[-1]%b)      
        qu.append((a[-1]-r[-1])/b)
        if qu[-1]<b:
            break
        a.append(int(qu[-1]))
    r.append(int(qu[-1]))
    return r, b, a1
r,b, a1=base()
d=r[::-1]
print(f"You have entered {a1} and the base is {b}. The result is {d}")
