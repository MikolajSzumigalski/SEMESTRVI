f = (x) -> {
 x = lift(Mod(x*x+1, n))
}

rPollard = (n) -> {
 x = vector(n);
 y = vector(n);
 x[1] = random(n);
 y[1] = x[1];
 i = 2;
 while (i < 1.77*sqrt(n)+1,
  licznik = licznik +1;
  x[i] = f(x[i-1]);
  y[i] = f(f(y[i-1]));
  if(gcd(x[i]-y[i],n) >= 1,
    rpol = gcd(x[i]-y[i], n);
    print("p: ", rpol);
    print("ilosc iteracji: "licznik);
    );
    i = i + 1;
    );
}
{
p=random(1024);
while(!isprime(p), p=random(1024));

q=random(1024);
while(!isprime(q), q=random(1024));
licznik = 0;
n = p*q;
rPollard(n);
while(n % rpol != 0 || rpol == 1,
  rPollard(n);
  );
  print("n: ", n);
  print("p: ", rpol);
  print("p=", p);
  print("q=", q);
  print("ilosc iteracji: "licznik);

}
