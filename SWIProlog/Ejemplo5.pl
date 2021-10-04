saludos:-
	prologPais(Pais1),
	write(Pais1),
	write(" saluda a: "),
	nl,
	!,
	prologPais(Pais2),
	Pais2\==Pais1,
	write(Pais2),
	nl,
	fail.
prologPais(japon).
prologPais(francia).
prologPais(hungria).
prologPais(bhutan).
prologPais(kenya).
prologPais(suriname).







