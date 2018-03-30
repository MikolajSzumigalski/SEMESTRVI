n = int(input("Podaj liczbe n (maksymalna wartosc elementu w podzbiorze): "))
k = int(input("Podaj k (ilość elementow w podzbiorze): "))

def SuperPrint(n, a):
    for i in range(0, n):
        print(A[i])

A = []
P = []
POM = []
for i in range (0, n):
    A.append([ [[]] for j in range(0,i+2) ])

for i in range (0, n):
    P.append(i+1)
    A[i][len(A[i])-1] = [list(P)]

for i in range(1, n):
    for j in range(1, i+1):
        POM = list(reversed(A[i-1][j-1]))
        A[i][j] = list(A[i-1][j])+ list([x + [i+1] for x in POM])
SuperPrint(n, A)
