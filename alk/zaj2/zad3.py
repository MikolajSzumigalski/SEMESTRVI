#!/usr/bin/env python3

n = int(input("Podaj liczbe n: "))

podzbiorBIN = [] # tworzymy liste z binarnymi warosciami
for i in range (0, n+1): #wypełniamy zerami
    podzbiorBIN.append(0)

ciag = input("Podaj podzbior(oddzielony spacjami): ")
if ciag != "": # sprawdzamy czy nie jest to zbior pusty
    podzbior = ciag.split(" ")
    for i in range (0, len(podzbior)):
        podzbiorBIN[int(podzbior[i])] = 1 # ustawiamy 1 tam gdzie są wartości w podzbiorze
    print(podzbiorBIN)
    wartosc = 0
    for i in range (1, len(podzbiorBIN)): # użyłem schematu Hornera
        wartosc = wartosc * 2 +  podzbiorBIN[i]
    print (wartosc)
else:
    print (0)
