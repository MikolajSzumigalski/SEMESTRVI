d = int(input())
for i in range(0, d):
    n = int(input())
    T = list(map(int, input().split(" ")))
    if sum(T) == 1 and T[0] == 1:
        print(2)
    else:
        if sum(T) == 0:
            print(0)
        else:
            if sum(T) == len(T) or (sum(T) == len(T)-1 and T[0] == 0):
                print(1)
            else:
                print("NIE MOŻNA")    
