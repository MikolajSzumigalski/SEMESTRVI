import numpy as np
from numpy import *
def sgn(v):
    if v >= 0: return 1
    else: return -1

def SGN(v):
    v_out = np.zeros(len(v))
    for i in range(0,len(v)):
        v_out[i] = sgn(v[i])
    return v_out

def print_image(u):
    print("----------")
    for i in range(0,25):
        if u[i] == -1: print("  ",end='')
        elif u[i] == 1: print("* ", end='')
        else: print("?", end='')
        if (i+1)%5 == 0: print("")
    print("----------")

U = np.array([
    [-1,-1,-1,-1,-1,
     -1,1,1,1,-1,
     -1,1,-1,1,-1,
     -1,1,1,1,-1,
     -1,-1,-1,-1,-1],
     [-1,-1,-1,-1,-1,
     -1, 1, 1, -1, -1,
     -1,-1,1,-1,-1,
     -1,-1,1,-1,-1,
     -1,-1,-1,-1,-1],
     [-1,1,1,1,-1,
      -1,1,-1,1,-1,
      -1,1,-1,1,-1,
      -1,1,1,1,-1,
      -1,-1,-1,-1,-1],
      [-1,-1,1,-1,-1,
       -1,-1,1,-1,-1,
       -1,-1,1,-1,-1,
       -1,-1,1,-1,-1,
       -1,-1,1,-1,-1]
     ], np.float64)

W = np.zeros((25,25,), dtype=np.float64)
for i in range(0,25):
    for j in range(0,25):
        W[i][j] = 1/25 * U[0][i] * U[0][j] +  1/25 * U[1][i] * U[1][j]

for i in range(0, 4):
    print(i)
    print("input:")
    print_image(U[i])
    print("output:",)
    print_image(SGN(W.dot(U[i])))
    print('\n')
