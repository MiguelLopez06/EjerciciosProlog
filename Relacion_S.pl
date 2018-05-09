padre_de(fernando,jose).
padre_de(esther,jose).
padre_de(fernando,maria).
padre_de(esther,maria).
padre_de(graciela,fernando).
padre_de(daniel,fernando).
padre_de(iria,esther).
padre_de(mariano,esther).
padre_de(iria,jairo).
padre_de(mariano,jairo).
padre_de(jairo,steven).
padre_de(alvaro,graciela).
padre_de(susanda,graciela).
padre_de(juan,daniel).
padre_de(daniela,daniel).
padre_de(concepcion,iria).
padre_de(luis,iria).
padre_de(transito,mariano).
padre_de(modesto,mariano).


hermano_de(X,Y) :- padre_de(Z,X),padre_de(Z,Y), X\==Y.
esposo_de(X,Y) :- padre_de(X,Z),padre_de(Y,Z), X\==Y.
hijo_de(X,Y) :- padre_de(Y,X).
abuelo_de(X,Y) :- padre_de(X,Z),padre_de(Z,Y).
primo_de(X,Y) :- padre_de(Z,X),padre_de(W,Y),hermano_de(Z,W).
sobrino_de(X,Y) :- padre_de(Z,X),hermano_de(Z,Y).
tio_de(X,Y) :- padre_de(Z,Y),hermano_de(Z,X).
nieto_de(X,Y):- padre_de(Z,X),padre_de(Y,Z).













