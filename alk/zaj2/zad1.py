#!/usr/bin/env python3
# coding: utf-8

k = int(input())
T = []

for p in range(1, k):
	T[p]=1

while True:
		i = k
		print("{")
		for z in range(1, k):
			if T[z] != 1: 
				print(z + " ")
			print("}")
	
		while (i>=1) and (T[i] == 2):
			i= i - 1
		if i >= 1:
			T[i]= T[i] + 1
			for j in range (i+1, k):
				T[j]=1 	
		if i != 0:
			break					
