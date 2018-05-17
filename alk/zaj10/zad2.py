n = int(input("Podaj liczbę n: "))
f = list(map(int, input("podaj f: ").split(" ")))
B = []
def RGF_podzial(n, f):
    k = 1
    for j in range (0, n):
        if f[j] > k:
            k = f[j]
    for i in range(0, k):
        B.append([])
    print(B)    
    for j in range(0, n):
        B[f][j].append(j)
    print(B)
RGF_podzial(n, f)
