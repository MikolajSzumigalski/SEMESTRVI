{
p=random(2^1000);
k=0;
while(!isprime(p), p=random(2^1000); k++;);

print("p=", p);
print("k=", k);


}
