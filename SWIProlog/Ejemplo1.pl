/* As� se escribe un comentario en SWI-Prolog...
   (comenzando y termin�ndolo con los mismos s�mbolos que usa Java) */
% �sta es otra forma de escribir un
% comentario (el compilador descarta cualquier cosa que aparezca
% a la derecha del s�mbolo de porcentaje en cualquier l�nea del
% programa).
hombre(jose).
hombre(juan).
mujer(maria).
papa(juan,jose).
papa(juan,maria).
valioso(dinero).
dificilDeObtener(dinero).
le_da(pedro,libro,antonio).

hermana(X,Y):- % Comentario v�lido
	papa(Z,X),
	mujer(X),
	papa(Z,Y),
	X\==Y.
hijo(X,Y):-
	papa(Y,X),
	hombre(X).
humano(X) :- mujer(X).
humano(X) :- hombre(X).


