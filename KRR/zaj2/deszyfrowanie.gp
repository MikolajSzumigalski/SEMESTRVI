{
 n = read("n.txt");
 d = read("d.txt");
 C = read("C.txt");
 print("DESZYFROWANIE");
 print("n=", n);
 print("d=", d);
 print("C=", C);

 Md = lift(Mod(C, n)^(d));
 write("Md.txt", Md);

}