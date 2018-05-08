import random

c = 0.001
eps = 0.00001

##################################---FUNKCJA 1---##################################

def f1(tab):
    x = tab[0]
    y = tab[1]
    z = tab[2]
    return 2*x*x + 2*y*y + z*z - 2*x*y - 2*y*z - 2*x + 3

def Df1x(tab):
    x = tab[0]
    y = tab[1]
    z = tab[2]
    return 4*x + 2*y-4*x

def Df1y(tab):
    x = tab[0]
    y = tab[1]
    z = tab[2]
    return 4*y - 2*x - 2*z

def  Df1z(tab):
    x = tab[0]
    y = tab[1]
    z = tab[2]
    return 2*z - 2*y

prawda = True
x1_old = [random.randint(0,1), random.randint(0,1), random.randint(0,1)]
print ("f1: x_old: ", x1_old)

x1_new = [0,0,0]
while(prawda):
    max = 0.0
    x1_new[0] = x1_old[0] - c*Df1x(x1_old)
    x1_new[1] = x1_old[1] - c*Df1y(x1_old)
    x1_new[2] = x1_old[2] - c*Df1z(x1_old)
    for i in range(0, 3):
        if x1_new[i] - x1_old[i] < 0:
            if (max < -(x1_new[i] - x1_old[i])):
                max = -(x1_new[i] - x1_old[i])
        else:
            if (max < (x1_new[i] - x1_old[i])):
                max = x1_new[i] - x1_old[i]
    if(max < eps):
        prawda = False
    x1_old = list(x1_new)
print("f1: x_new: ", f1(x1_new))

##################################---FUNKCJA 2---##################################
def f2(tab):
    x = tab[0]
    y = tab[1]
    return 3 * x*x*x*x + 4*x*x*x - 12*x*x + 12*y*y - 24*y

def Df2x(tab):
    x = tab[0]
    y = tab[1]
    return 12*x*x*x + 12*x*x - 24*x

def Df2y(tab):
    x = tab[0]
    y = tab[1]
    return 24*y - 24

prawda = True
x2_old = [random.randint(0,1), random.randint(0,1)]
print ("f2: x_old: ", x2_old)

x2_new = [0,0]
while(prawda):
    max = 0.0
    x2_new[0] = x2_old[0] - c*Df2x(x2_old)
    x2_new[1] = x2_old[1] - c*Df2y(x2_old)
    for i in range(0, 2):
        if x2_new[i] - x2_old[i] < 0:
            if (max < -(x2_new[i] - x2_old[i])):
                max = -(x2_new[i] - x2_old[i])
        else:
            if (max < (x2_new[i] - x2_old[i])):
                max = x2_new[i] - x2_old[i]
    if(max < eps):
        prawda = False
    x2_old = list(x2_new)
print("f2: x_new: ", f2(x2_new))
