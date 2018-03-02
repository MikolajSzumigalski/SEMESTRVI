{
k=100;
p=random(2^k);
q=random(2^k);

while(!isprime(p), p=random(2^k));
while(!isprime(q), q=random(2^k));
print("p=",p);
print("q=",q);
n=p*q;
print(factor(n));
n=random(2^(2*k));
print(factor(n));
}