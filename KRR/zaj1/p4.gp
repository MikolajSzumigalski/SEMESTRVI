{
k=10;
p=random(2^k);
while(!isprime(p), p=random(2^k));

print("p=",p);
g=random(p);
x=random(p);
print("g=", g);
print("x=", x);
y=1;
for(i=0, x, y=y*g;);
print("y=", y);
y=lift(Mod(y,p));
print("y=", y);
x=0;
while(g!=y, g=lift(Mod(g*g, p));x=x+1);
print("x=", x);
}