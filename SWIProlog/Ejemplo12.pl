:- dynamic pais/1.

pais(holanda).
pais(francia).

repite.
repite:-
	repite.

escribe_paises:-
	pais(X),
	X\==ya,
	write(X),
	nl,
	fail.
escribe_paises.

main:-
	write("Dame los nombres de varios pa�ses y escribe ya"),
	write(" cuando quieras terminar."),
	nl,
	repite,
	read(Pais),
	assert(pais(Pais)),
	Pais==ya,
	escribe_paises.

%?-main.
