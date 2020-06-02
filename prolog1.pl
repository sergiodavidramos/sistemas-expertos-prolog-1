padre(enrique7,enrique8).
padre(enrique7,arturo).
padre(enrique7,margarita).

padre(enrique8,maria).
padre(enrique8,isabel).
padre(enrique8,eduardo).

madre(catalina, maria).
madre(ana, isabel).
madre(juana, eduardo).

hombre(enrique7).
hombre(enrique8).
hombre(arturo).
hombre(eduardo).
mujer(margarita).
mujer(juana).
mujer(catalina).
mujer(ana).
mujer(isabel).
mujer(maria).

progenitor(H,P,M):-padre(P,H),hombre(P);madre(M,H),mujer(M).
hermano(X,Y):-hombre(X),padre(P,Y),padre(P,X).
hermana(Y,X):-mujer(Y),padre(P,X),padre(P,Y).
abuelo(A,N):-hombre(A),padre(A,H),padre(H,N).
abuela(_,N):-mujer(_),madre(_,H),madre(H,N).


