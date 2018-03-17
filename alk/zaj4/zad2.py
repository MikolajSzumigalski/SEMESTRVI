n = int(input("Podaj liczbe n (ilosc elementow zbioru): "))
T = list(map(int, input("Podaj k uporzadkowanych leksykograficznie elementow podzbioru(oddzielone spacja) ").split(" ")))

def dwumian_newtona(n, k):
    iloczyn = 1
    pom = 2
    for i in range (n, n-k, -1):
        iloczyn = iloczyn * i
        if pom <=k:
            iloczyn = iloczyn / pom
            pom = pom +1
    if pom < k:
        while pom <= k:
            iloczyn = iloczyn / pom
            pom = pom+1
    return int(iloczyn)

def rank(T, n):
    k = len(T)
    T.insert(0, 0)
    suma = 0
    for i in range (1, k+1):
        for j in range(T[i-1]+1, T[i]):
            suma = suma + dwumian_newtona(n-j, k-i)
    return suma

print(rank(T,n))
