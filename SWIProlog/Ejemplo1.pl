/* Así se escribe un comentario en SWI-Prolog...
   (comenzando y terminándolo con los mismos símbolos que usa Java) */
% Ésta es otra forma de escribir un
% comentario (el compilador descarta cualquier cosa que aparezca
% a la derecha del símbolo de porcentaje en cualquier línea del
% programa).
hombre(jose).
hombre(juan).
mujer(maria).
papa(juan,jose).
papa(juan,maria).
valioso(dinero).
dificilDeObtener(dinero).
le_da(pedro,libro,antonio).

hermana(X,Y):- % Comentario válido
	papa(Z,X),
	mujer(X),
	papa(Z,Y),
	X\==Y.
hijo(X,Y):-
	papa(Y,X),
	hombre(X).
humano(X) :- mujer(X).
humano(X) :- hombre(X).


