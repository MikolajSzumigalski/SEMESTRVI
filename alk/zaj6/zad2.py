RO = list(map(int, input("Podaj permutację zbioru: ").split(" ")))
n = len(RO)
RO.insert(0,0)
r = 0
def silnia(n):
    x=1
    for i in range(2, n+1):
        x = x * i
    return x

for j in range (1, n):
    r = r + (RO[j]-1)*silnia(n-j)
    for i in range (j+1, n):
        if RO[i] > RO[j]:
            RO[i] = RO[i]-1
print(r)
