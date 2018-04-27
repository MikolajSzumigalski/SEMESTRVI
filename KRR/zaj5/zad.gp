B = (d,e,n) ->
{
  t = e*d-1;
  s = 0;

  while(t%2 == 0,
    s = s + 1;
    t = t / 2;
    );

  a = random(n);

  if(gcd(a,n) > 1,
    p = gcd(a,n);
    ,
    v = lift(Mod(a, n)^t);
    if( lift(Mod(v, n)) == 1,
      print("ZBIOR PUSTY");
      ,
      pom=0;
      while( lift(Mod(v, n)) != 1,
        v0 = lift(Mod(v, n));
        v = lift(Mod(v0*v0, n));
        pom = pom+1;
        );
      if(lift(Mod(v0, n)) == -1,
          print("ZBIOR PUSTY");
          ,
          p = gcd(v0+1, n);
          );
    );
    );
}

{
read("rsa3.out");
B(d,e,n);
print("p: ", p);
q = n/p;
print("q: ", q);
}
