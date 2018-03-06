#!/usr/bin/env python3
def leksy(k, n, wyraz):
    if n > 0:
        for i in range (1, k+1):
            leksy(k, n-1, wyraz+str(i))
    else:
        print ("{ " + wyraz + " }")
    return 0

k = int(input("Podaj liczbe k: ")) #maksymalna wartość pozycji w ciągu
n = int(input("Podaj liczbe n: ")) #długość ciągów
print(leksy(k,n,""))

#program działa jeżeli dane są wprowadzane w osobnych liniach
