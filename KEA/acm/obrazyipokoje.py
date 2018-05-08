d = int(input())
for i in range (0, d):
    n = int(input())
    T = list(map(int, input().split(" ")))
    T.insert(0,0)
    W = [0 for i in range (0, n+1)]
    for i in range (1, n+1):
        W[T[i]] += 1
    pom = 1
    while pom < n +1:
        if W[pom] == 0:
            pomx = T[pom]
            while pomx < pom and W[pomx] > 0:
                W[pomx] -= 1
                if W[pomx] > 0:
                    break
                if W[pomx] == 0:
                    pomx = T[pomx]
        pom = pom + 1
    print(sum(W))
