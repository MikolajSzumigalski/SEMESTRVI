#!/usr/bin/env python3

def xor(a, b):
    if a != b:
        return 1
    else:
        return 0

r = 0

n = int(input("Wprowadź maksymalną wartość w zbiorze (n): "))

T = list(map(int, input("wprowadź elementy: ").split()))
Bin = []

for i in range (0, n):
    Bin.append(0)

for i in range (0, n):
    Bin[T[i]-1] = 1

    Bin[0] = xor(0, Bin[0])
for i in range (1, n):
    Bin[i] = xor(Bin[i-1], Bin[i])

suma = 1
for i in range (n-1, -1, -1):
    if Bin[i] != 0:
        suma = suma + 1 *2
    else:
        suma = suma * 2
print (suma)
