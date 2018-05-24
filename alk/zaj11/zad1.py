n = int(input("Podaj liczbę n:"))
k = int(input("Podaj ilość składników k: "))
P = [[1]]

def prettyPrint(T):
    for i in range(0, n+1):
        print(i, end=" ")
    print("")    
    pom = 0
    for i in T:
        print(pom, end=": ")
        pom += 1
        print(i)


for i in range(1, n+1):
    P.append([0])
    for j in range (0, i):
        P[i].append( P[i-1][j-1] + P[i-j][j] )
    for j in range (i, n):
        P[i].append(0)
prettyPrint(P)
print(P[n][k])
