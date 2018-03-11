TESTMILLERARABINA = (n, k) ->{
 a = random(n);
 while (gcd(a, n)!= 1,  a = random(n));
 print(a);
 if(lift(Mod(a^(n-1),n))!= 1, print("nie"); break );
 s = 0;
 t = n-1;
 while (t%2 == 0, s++; t = t/2);
 v = lift(Mod(a, n)^(t));
 if(lift(Mod(v, n))!=1 || Mod(v, n)!=-1, print ("tak"); break)
 }
{
 n=random(1024);
 n = 524289;
 k=30;
 print("n= ",n);
 TESTMILLERARABINA(n, k);



}
