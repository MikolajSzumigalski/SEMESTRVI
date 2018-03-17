TEST_FERMATA = (n, k) ->{
  for(k, 0, k -=1,
    a = random(n);
    while( lift(Mod(a,n))!=1, a = random(n);));
}
