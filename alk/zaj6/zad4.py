n = int(input("Podaj maksymalna wartosc permutacji: "))
T = [[1]]

def list_print(T):
    for i in range(0, len(T)):
        print(T[i])

for k in range(2, n+1): #licznik max wartości permutacji
    pom = 0 # zmienna pomocnicza do wstawiania elementów
    for i in range (0, len(T)): #pętla po wszystkich elementach tablicy
        if(i%2 == 0): #dla parzystych wstawiamy na koniec i iterujemu w dół tablicy
            T[pom].append(k) #wstawiamy max wartość na koniec dla parzystych
            pom = pom + 1
            for j in range(len(T[pom-1])-1, 0, -1):
                T.insert(pom, list(T[pom-1])) #po każdym elemencie wstawiamy poprzedni...
                T[pom][j], T[pom][j-1] = T[pom][j-1], T[pom][j] #... i zamieniamy 2 jego elementy
                pom = pom + 1
        else:
            T[pom].insert(0, k)
            pom = pom + 1
            for j in range(0, len(T[pom-1])-1): #wstawiamy max wartość na początek dla nieparzystych
                T.insert(pom, list(T[pom-1])) #po każdym elemencie wstawiamy poprzedni...
                T[pom][j], T[pom][j+1] = T[pom][j+1], T[pom][j] #... i zamieniamy 2 jego elementy
                pom = pom + 1
list_print(T)
