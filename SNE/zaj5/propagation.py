import math

beta = 1.0
epsilon = 0.000001
c = 0.1

def  f(u):
    return 1 / (1 + math.e**-beta*u)

def fprim(u):
    return beta * f(u)
