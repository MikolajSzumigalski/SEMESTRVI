n = int(input("Podaj liczbe n (ilosc elementow zbioru): "))
T = list(map(int, input("Podaj k uporzadkowanych leksykograficznie elementow podzbioru(oddzielone spacja) ").split(" ")))

k = len(T)
T.insert(0, 0) #kontrone 0 aby el. były indeksowane od 1
i = k

while i>=1 and T[i] == n+i-k:
    i = i-1
if(i == 0 ):
     print ("Ciag nie ma nastepnika")
else:
    if i>=1:
        T[i] = T[i]+1
        for j in range (i+1, k+1):
            T[j]=T[j-1]+1
    T.remove(0) # usuwamy kontrolne 0
    print(T)
