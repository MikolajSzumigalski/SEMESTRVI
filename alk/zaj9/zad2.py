n = int(input("Wprowadź n - ilość elementów zbioru: "))
k = int(input("Wprowadź k - ilość cykli: "))

#Dodatkowa funkcja wypisująca wszystkie możliwości od s(0,0)
#do s(n, k), gdzie n >= k
#def sPrint(s):
#    for i in range(0, len(s)):
#        for j in range(0,len(s[i])):
#            print(s[i][j], end=" ")
#        print("\n")

if n < k:
     print(0)
else:
    s = []
    s.append([1,0])
    for i in range(1, n+1):
        s.append([0])
    for np in range(1,n+1):
        for kp in range(1, np+1):
            s[np].append(s[np-1][kp-1] - (np-1)*s[np-1][kp])
        s[np].append(0)
    #print("-------Cała tablica------")
    #sPrint(s)
    print("s(n,k)= "+ str(s[n][k]))
