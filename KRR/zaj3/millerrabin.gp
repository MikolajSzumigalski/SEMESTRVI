TESTMILLERARABINA = (n, k) ->{
 a = random(n);
 while (gcd(a, n)!= 1,  a = random(n));
 print(a);
 if(lift(Mod(a^(n-1),n))!= 1, print("nie"); break );
 s = 0;
 t = n-1;
 while (t%2 == 0, s++; t = t/2);
 v = lift(Mod(a, n)^(t));
 if(lift(Mod(v, n))==1 || lift(Mod(v, n))==-1, print ("tak"); break);
 while( lift(Mod(v, n)) != 1 && k>0,
        k = k - 1;
        v0 = lift(Mod(v, n));
        v = lift(Mod(v0*v0, n));
        if(lift(Mod(v, n))==1 || lift(Mod(v, n))==-1, print ("tak"); break));
  if(lift(Mod(v, n))!=1 && lift(Mod(v, n))!=-1, print ("nie"); break);
 }
{
n=random(102400);
while(!isprime(n), n=random(102400));
 k=30;
 print("n= ",n);
 TESTMILLERARABINA(n, k);



}
