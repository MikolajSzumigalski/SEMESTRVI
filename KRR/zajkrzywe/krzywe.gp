Dodaj = (x1, x2, y1, y2, x3, y3) ->{
  if ( x1 != x2,
        m = (y2 - y1)/(x2 - x1);
        x3 = lift(Mod(m*m - x1 - x2, p));
        y3 = lift(Mod( m *(x1-x3) - y1,p));
      );

  if ( (x1 == x2 && y1 != y2) || (x1 == x2 && y1 == y2 && y1 == 0),
      print("dzielenie prze zero");
      );

  if ( x1 == x2 && y1 == y2 && P[2] != 0,
        m = (3 * x1*x1 + a)/2*y1;
        x3 = lift(Mod(m*m - 2*x1));
        y3 = lift(Mod(m*(x1-x3) - y1));
      );
  print( "E(P2)= ", lift(Mod(x3*x3*x3 + a*x3 + b,p)));
  print("Y2^2= ", lift(Mod(y3*y3, p)) );
}

{
p=random(2^250);
while(!isprime(p), p=random(2^250));
print("p= ", p);
P = vector(5);

x=random(p);
y=random(p);
a=random(p);
b = lift(Mod(y*y - (x*x*x + a*x), p));
while( lift(Mod(4*a*a*a+27*b*b,p)) ==0,
      x=random(p);
      y=random(p);
      a=random(p);
      b = lift(Mod(y*y - (x*x*x + a*x), p));
      );
P[1] = vector(2);
P[2] = vector(2);
P[1][1] = x;
P[1][2] = y;
print( "E(P1)= ", lift(Mod(x*x*x + a*x + b,p)));
print("Y1^2= ", lift(Mod(y*y, p)) );
Dodaj(P[1][1],P[1][2],P[1][1],P[1][2], P[2][1],P[2][2]);
}
