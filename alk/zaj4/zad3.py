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
n = int(input("podaj range n:"))
k = int(input("podaj range k:"))
r = int(input("podaj range r:"))
T = []
x = 1
for i in range (1, k+1):
    while dwumian_newtona(n-x, k-i) <=r:
        r = r - dwumian_newtona(n-x, k-i)
        x = x + 1
    T.append(x)
    x = x+1
print(T)
