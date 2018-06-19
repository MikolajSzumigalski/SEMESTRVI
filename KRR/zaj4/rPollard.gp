f = (x) -> {
 x = lift(Mod(x+1, n))*lift(Mod(x+1, n))+1
}

rPollard = (n) -> {
 x = random(n);
 y = x;
 i = 2;
 while (i < sqrt(n),
  licznik = licznik +1;
  xp = x;
  yp = y;
  x = f(xp);
  y = f(f(yp));
  if(gcd(x-y,n) != 1,
    rpol = gcd(x-y, n);
    print("p: ", rpol);
    print("ilosc iteracji: "licznik);
    );

    i = i + 1;
    );
}
{
p=random(2^20);
while(!isprime(p), p=random(2^20));

q=random(2^20);
while(!isprime(q), q=random(2^20));
licznik = 0;
n = p*q;
rPollard(n);
while(n % rpol != 0 || rpol == 1 || rpol == n,
  rPollard(n);
  );
  print("n: ", n);
  print("p: ", rpol);
  print("p=", p);
  print("q=", q);
  print("ilosc iteracji: "licznik);

}
