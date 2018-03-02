{
 M = read("M.txt");
 n = read("n.txt");
 e = read("e.txt");
 C = lift(Mod(M, n)^(e));
 write("C.txt", C);
 print("SZYFROWANIE");
 print("M=", M);
 print("n=", n);
 print("e=", e);
 print("C=", C);
}