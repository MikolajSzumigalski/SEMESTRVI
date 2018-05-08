#!/usr/bin/env python3

def nxor(a, b): # funkcja odwrotna do xor
    if a != b:
        return 1
    else:
        return 0

n = int(input("Wprowadz maksymalna wartosc w zbiorze (n): "))

r = int(input("Wprowadz range szukanego podzbioru: "))

BinR = [] #tablica przechowująca wartość binarną rangi

while(r>0):
    BinR.append(r%2)
    r = r // 2

BinR.reverse()

while(len(BinR)<n):
    BinR.insert(0, 0)

for i in range (n-1, 0, -1):
    BinR[i] = nxor(BinR[i], BinR[i-1])

BinR[0] = nxor(0, BinR[0])

print ("{ ", end='')
for i in range (0, n):
    if BinR[i] != 0:
        print (i+1, end=' ')
print ("}")
print(BinR)
