{
k=100;
p=random(2^k);
while(!isprime(p), p=random(2^k));

print("p=",p);
a=random(p);
b=random(p);
c=Mod(a,p)+Mod(b,p);
print("c=", c);
c=Mod(a, p)^b;
print("c=", c);
}