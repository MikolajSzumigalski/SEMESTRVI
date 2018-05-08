n = int(input("Wprowadź n - ilość elementów zbioru: "))
k = int(input("Wprowadź k - ilość podzbiorów: "))

#Dodatkowa funkcja wypisująca wszystkie możliwości od S(0,0)
#do S(n, k), gdzie n >= k
#def sPrint(S):
#    for i in range(0, len(S)):
#        for j in range(0,len(S[i])):
#            print(S[i][j], end=" ")
#        print("\n")

if n < k:
     print(0)
else:
    S = []
    S.append([1,0])
    for i in range(1, n+1):
        S.append([0])
    for np in range(1,n+1):
        for kp in range(1, np+1):
            S[np].append(kp*S[np-1][kp] + S[np-1][kp-1])
        S[np].append(0)
    #print("-------Cała tablica------")
    #sPrint(S)
    print("S(n,k)= "+ str(S[n][k]))
