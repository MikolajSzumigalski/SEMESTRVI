#!/usr/bin/env python3

def xor(a, b):
    if a != b:
        return 1
    else:
        return 0

n = int(input("Wprowadz maksymalna wartosc w zbiorze (n): "))

T = list(map(int, input("wprowadz elementy podzbioru (oddzielone spacja): ").split()))
Bin = []

for i in range (0, n):
    Bin.append(0)

for i in range (0, len(T)):
    Bin[T[i]-1] = 1

    Bin[0] = xor(0, Bin[0])
for i in range (1, n):
    Bin[i] = xor(Bin[i-1], Bin[i])

suma = 0
for i in range (0, n):
    if Bin[i] != 0:
        suma = suma *2 +1
    else:
        suma = suma * 2
print(Bin)
print (suma)
