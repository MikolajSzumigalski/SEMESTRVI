n = int(input("Podaj liczbe n (ilosc elementow zbioru): "))
T = list(map(int, input("Podaj k uporzadkowanych antyleksykograficznie elementow podzbioru(oddzielone spacja) ").split(" ")))
k = len(T)
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
        suma = suma + dwumian_newtona(T[i]-1, k-i+1)
    return suma

print(rank(T,n))
