#!/usr/bin/env python3
def f( x ):
	if x >= 0:
		return 1
	else:
		return 0


w = []
u = []
while True:
	suma = 0
	print("Wybierz AND, NAND, NOT, lub OR")
	wybor = str(input())

	if wybor == "AND":
		n = 3
		for i in range (0, n-1):
			u.insert(i, int(input()))
		u.insert(2, 1)
		w.insert(0, 0.3)
		w.insert(1, 0.3)
		w.insert(2, -0.5)
		for i in range(0, n):
			suma = suma + (w[i] * u[i])
		print (f(suma))

	elif wybor == "NOT":
		n = 2
		for i in range (0, n-1):
			u.insert(i, int(input()))
		u.insert(0, 1)
		w.insert(0, -0.5)
		w.insert(1, 0.3)
		for i in range(0,n):
			suma = suma + (w[i] * u[i])
			print(suma)
		print (f(suma))
	elif wybor == "OR":
		n = 3
		for i in range (0,n-1):
			u.append(int(input()))

		u.insert(2, 1)
		w.insert(0, 0.3)
		w.insert(1, 0.3)
		w.insert(2, -0.2)
		for i in range (0,n):
			suma = suma + (w[i]*u[i])
		print ( f(suma) )
	elif wybor == "NAND":
		n = 3
		for i in range (0, n-1):
			u.insert(i, int(input()))
		u.insert(2, 1)
		w.insert(0, -0.3)
		w.insert(1, -0.3)
		w.insert(2, 0.5)
		for i in range(0, n):
			suma = suma + (w[i] * u[i])
		print (f(suma))
	else:
		print("Polecenie niepoprawne")
	w.clear()
	u.clear()
