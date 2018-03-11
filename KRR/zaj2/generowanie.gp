{
 p=random(2^1024);
 while(!isprime(p), p=random(2^1024));

 q=random(2^1024);
 while(!isprime(q), q=random(2^1024));
 print("p=", p);
 print("q=", q);
 n = p * q;
 fi = (p-1)*(q-1);
 e = random(fi);
 while(gcd(e, fi)!=1, e = random(fi));    /* gcd - NWD */
 print(e);
 d=lift(Mod(e, fi)^(-1));
 write("e.txt", e);
 write("fi.txt", fi);
 write("n.txt", n);
 write("d.txt", d);
 print("GENEROWANIE");
 print("e=", e);
 print("fi=", fi);
 print("n=", n);
 print("d=", d);
}