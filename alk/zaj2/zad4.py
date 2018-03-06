#!/usr/bin/env python3

n = int(input("Podaj wartosc n: "))
BIN = []
for i in range(0, n+1):
    BIN.append(0)
wartosc = int(input("Podaj pozycje r: "))

licznik = 0 # liczy ile razy dzielimy 'wartosc' co ustala miejsce w tablicy
while wartosc > 0:
    BIN[n-licznik] = wartosc%2
    wartosc = wartosc // 2
    licznik = licznik + 1

print("{ ", end='')
for i in range (1, n+1):
    if BIN[i] == 1:
        print(i, end=' ')
print("}")
