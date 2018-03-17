% Author:   Szumimajster
% Date: 12.03.2018

kobieta(beata).
kobieta(dorota).
kobieta(maria).
kobieta(ewa).
kobieta(anna).
kobieta(hanna).
kobieta(aneta).
kobieta(agnieszka).
mezczyzna(adam).
mezczyzna(michal).
mezczyzna(jan).
mezczyzna(piotr).
mezczyzna(dominik).
mezczyzna(marcin).
mezczyzna(karol).
mezczyzna(krzysztof).
mezczyzna(kacper).
rodzic(beata,piotr).
rodzic(adam,piotr).
rodzic(dorota,anna).
rodzic(michal,anna).
rodzic(jan,ewa).
rodzic(maria,ewa).
rodzic(piotr,dominik).
rodzic(anna,dominik).
rodzic(piotr,marcin).
rodzic(anna,marcin).
rodzic(ewa,karol).
rodzic(dominik,karol).
rodzic(ewa,krzysztof).
rodzic(dominik,krzysztof).
rodzic(ewa,kacper).
rodzic(dominik,kacper).
rodzic(ewa,hanna).
rodzic(dominik,hanna).
rodzic(marcin,agnieszka).
rodzic(aneta,agnieszka).
ojciec(X, Y) :- mezczyzna(X), rodzic(X,Y).
matka(X, Y) :- kobieta(X), rodzic(X,Y).
dziadek(X, Y) :- ojciec(X,Z), rodzic(Z,Y).
babcia(X, Y) :- matka(X,Z), rodzic(Z,Y).
siostra(X, Y) :- kobieta(X), rodzic(Z, X), rodzic(Z, Y), X\==Y.
brat(X, Y) :- mezczyzna(X), rodzic(Z, X), rodzic(Z, Y), X\==Y.
rodzenstwo(X, Y) :- rodzic(A,X), rodzic(A,Y).
kuzyn(X, Y) :- rodzic(A, X), rodzic(B, Y), rodzenstwo(A, B).
czlowiek(X) :- kobieta(X).
czlowiek(X) :- mezczyzna(X).
przodek(X,Y) :- rodzic(X,Y).
przodek(X,Y) :- rodzic(X, C), przodek(C, Y).
