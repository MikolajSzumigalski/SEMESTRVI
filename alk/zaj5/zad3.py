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

n = int(input("podaj n:"))
k = int(input("podaj k:"))
r = int(input("podaj r:"))
T = []
x = n
for i in range (1, k+1):
    while dwumian_newtona(x, k-i+1) > r:
        x = x - 1
    T.append(x+1)
    r = r - dwumian_newtona(x, k-i+1)
print(T)S
