PI = list(map(int, input("Podaj permutację zbioru: ").split(" ")))
n = len(PI)
PI.insert(0,0)
i = n - 1
while PI[i+1] < PI[i]:
    i = i - 1
if i == 0:
    print ("Nie ma następnika")
else:
    j = n
    while PI[j] < PI[i]:
        j = j - 1
    pom = PI[j]
    PI[j] = PI[i]
    PI[i] = pom

    PI[i+1:n+1] = reversed(PI[i+1:n+1])
    PI.remove(0)
    print(PI)
