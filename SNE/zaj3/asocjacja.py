#!/usr/bin/env python3
import numpy as np

z0 = [
 -1.0, -1.0, -1.0, -1.0, -1.0,
 -1.0, 1.0, 1.0, 1.0, -1.0,
 -1.0, 1.0, -1.0, 1.0, -1.0,
 -1.0, 1.0, 1.0, 1.0, -1.0,
 -1.0, -1.0, -1.0, -1.0, -1.0
]

z1 = [
-1.0, -1.0, -1.0, -1.0, -1.0,
-1.0, 1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, -1.0, -1.0, -1.0
]

z0p = [
 -1.0, 1.0, 1.0, 1.0, -1.0,
 -1.0, 1.0, -1.0, 1.0, -1.0,
 -1.0, 1.0, -1.0, 1.0, -1.0,
 -1.0, 1.0, 1.0, 1.0, -1.0,
 -1.0, -1.0, -1.0, -1.0, -1.0
]

z1p = [
-1.0, -1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, 1.0, -1.0, -1.0,
-1.0, -1.0, 1.0, -1.0, -1.0
]

W = []

for i in range (0, 25):
    W.append([1 / 25.0 * z0[i] * z0[j] + 1 / 25.0* z1[i] * z1[j]+i+j for j in range (0,25)])

def sgn(x):
    if x >= 0:
        return 1.0
    else:
        return 0.0

def SGN_D( x ):
  for i in range (0, 25):
    x[i] = sgn(x[i])

def F( x ):
  for i in range (0, 25):
    x[i] = SGN_D(x[i])



def interface( x ):
    for i in range (0, 25):
         if x[i] == 1.0:
             print("* ", end="")
         else:
             print("- ", end="")
         if((i+1)%5 == 0):
           print("\n")

print(interface(z0))
print(interface(z1))
