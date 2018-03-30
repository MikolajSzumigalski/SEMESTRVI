n = int(input("Podaj liczbe n (maksymalna wartosc elementu w podzbiorze): "))
k = int(input("Podaj k (ilość elementow w podzbiorze): "))

def SuperPrint(n,k, a):
    for i in range(0, n+1):
        print(A[i])

A = []
P = []
POM = []
for i in range (0, n+1):
    A.append([ [[]] for j in range(0,i+1) ])

for i in range (1, n+1):
    P.append(i)
    A[i][len(A[i])-1] = [list(P)]

for i in range(2, n+1):
    for j in range(1, i):
        POM = list(reversed(A[i-1][j-1]))
        A[i][j] = list(A[i-1][j])+ list([x + [i] for x in POM])

#SuperPrint(n,k, A)
# wiem, że funkcja SuperPrint jest niepotrzebna
# ale całkiem ładnie wyświetla całą  tablicę więc ją zostawiłem
# mam nadzieję, że to nie problem

print(A[n][k])
