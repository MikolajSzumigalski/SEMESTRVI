n = int(input("Wprowadź n: "))

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

B = [1]
for i in range(1, n+1):
    B.append(0)
    for j in range(0, i):
        B[i] = B[i] + dwumian_newtona(i-1, j)*B[j]

print("B(n)= ", end="")
print(B[n])
