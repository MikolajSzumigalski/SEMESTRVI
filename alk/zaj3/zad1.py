#!/usr/bin/env python3

n = int(input())
T = []
prawda = True
for i in range (0, n): #generujemy ciąg samych zer
    T.append(0)
    czyparzysta = 1 # pomocnicza zmienna gdy jest 1 znaczy, że liczba jedynek w ciągu jest parzysta, gdy jest równa -1 znaczy, że nieparzysta
while ( prawda == True ):

    print ("{ ", end='') # wypisywanie ciągów
    for i in range (0, n):
        if T[i] == 1:
            print (i+1, end='')
            print (" ", end='')
    print ("}")

    if czyparzysta == 1:
        if T[n-1] == 1: # gdy są parzyste
            T[n-1] = 0
        else:
            T[n-1] = 1

    else:
        pom = n - 1 # sprawdzamy kiedy jest pierwsza jedynka od prawej strony
        while (T[pom] != 1 and pom > 0):
            pom -= 1
        if pom == 0:
            prawda = False
        else:
            if T[pom-1] == 1:
                T[pom-1] = 0
            else:
                T[pom-1] = 1

    czyparzysta = -czyparzysta
