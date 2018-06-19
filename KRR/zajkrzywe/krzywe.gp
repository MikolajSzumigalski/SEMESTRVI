Dodaj = (P, Q, A, p) -> {
  local(R, m);
  R=[-1,-1];
  if(P == [0], return(Q));
  if(Q == [0], return(P));
  if(P == Zamien(Q,p), return([0]));

  if(P != Q,
     m = lift(Mod((P[2] - Q[2])/(P[1] - Q[1]),p));
     ,
     m = lift(Mod((3*P[1]^2 + A)/(2*P[2]),p));
  );

  R[1] = lift(Mod((m^2 - P[1] - Q[1]),p));
  R[2] = lift(Mod(P[2] + m*(R[1] - P[1]),p));

  return(Zamien(R,p));
}
Zamien = (P, p) -> {
  local(Q);
  Q = [-1,-1];
  Q[2] = lift(Mod(-P[2], p));
  Q[1] = P[1];
  return(Q)
}
pomnoz = (P, n) -> {
  local(b,i,R);
  R = [0];
  b = Vecrev(binary(n));
  i = 1;

  while(i <= length(b),
    if(b[i] == 1, R = Dodaj(R,P,a, p));
    P = Dodaj(P,P,a, p);
    i++;
  );

  return(R);
}

genKrzywej = () -> {
  p=random(2^250);
  while(!isprime(p), p=random(2^250));
  x=random(p);
  y=random(p);
  a=random(p);
  b = lift(Mod(y*y - (x*x*x + a*x), p));
  while( lift(Mod(4*a*a*a+27*b*b,p)) == 0,
        x=random(p);
        y=random(p);
        a=random(p);
        b = lift(Mod(y*y - (x*x*x + a*x), p));
        );
  return([a, b, x, y]);
}

sprawdzKrzywa = (krzywa, punkt) ->{
  print("Lewa strona: ");
  L = lift(Mod(punkt[2]^2, p));
  print(L);
  print("Prawa strona: ");
  P = lift(Mod(punkt[1]^3 + krzywa[1]*punkt[1] + krzywa[2], p));
  print(P);
  if(L == P, print("Tak"), print("Nie"));

}

wypiszKrzywa = (krzywa) -> {
  print("Krzywa:");
  pkta = krzywa[1];
  pktb = krzywa[2];
  print("E: Y^2 = X^3 + " , pkta , "X + " , pktb );
}

wypiszPunkt = (punkt) -> {
  print("Punkt:");
  print("X: ", punkt[1]);
  print("Y: ", punkt[2]);
}

wylosujPunkt = (krzywa) -> {
  a = krzywa[1];
  b = krzywa[2];
  prawda = 1;
  while ( prawda == 1,
    x = random(p);
    y = x^3 + a*x + b;
    print(lift(Mod(y, p)^((p-1)/2)));
    if (lift(Mod(y, p)^((p-1)/2)) == 1,
      prawda = 0;
      y = lift(Mod(sqrtint(y), p));
      return([x, y]);
      );
    );


}


{
krzywa = genKrzywej();
print("p: ", p);
wypiszKrzywa(krzywa);
print("");
wypiszPunkt([krzywa[3], krzywa[4]]);
P1 = [krzywa[3], krzywa[4]];
\\sprawdzKrzywa([krzywa[1], krzywa[2]], P1);
P2 = Dodaj(P1, P1, a, p);
P2 = Dodaj(P2, P2, a, p);
P2 = Dodaj(P2, P1, a, p);
print("");
wypiszPunkt(P2);
sprawdzKrzywa([krzywa[1], krzywa[2]], P2);
P4 = pomnoz(P1, 7);
print("");
print("Punkt pomnozony:");
wypiszPunkt(P4);
sprawdzKrzywa([krzywa[1], krzywa[2]], P1);
}
