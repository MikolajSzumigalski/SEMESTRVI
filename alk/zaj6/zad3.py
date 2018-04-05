r = int(input("Podaj range r: "))
n = int(input("Podaj n (ilosc el. permutacji): "))

def silnia(n):
    x=1
    for i in range(2, n+1):
        x = x * i
    return x

PI = []
for i in range(0, n+1):
    PI.append(0)
PI[n] = 1
for j in range(1, n):
    d = (r%silnia(j+1)) // silnia(j)
    r = r -d*silnia(j)
    PI[n-j] = d + 1
    for i in range(n-j+1, n+1):
        if PI[i] > d:
            PI[i] = PI[i] + 1
PI.remove(0)            
print(PI)
