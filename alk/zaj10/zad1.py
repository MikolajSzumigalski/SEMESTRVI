B = []
f = []
k = int(input("Podaj liczbę k: "))
print("Podaj k podzbiorów: ")

for i in range (0, k):
    print(str(i+1) + ": ", end="")
    B.append(list(map(int, input().split(" "))))
    B.sort()


maxT  = []
for i in B:
    maxT.append(max(i))
n = max(maxT)

for i in range (0, n):
    f.append(0)

def podzial_rgf(n, k, B):
    for i in range (0, k):
        for j in range(0, len(B[i])):
            f[B[i][j]-1]=i+1
    print("WYNIK: ", end="")
    for i in f:
        print(i, end=" ")

podzial_rgf(n, k, B)
