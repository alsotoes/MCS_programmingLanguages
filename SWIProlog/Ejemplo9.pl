% combina(i,i,o) o combina(o,i,i) o
% combina(i,o,i) o combina(i,i,i) o
% combina(o,o,i)
combina([],Lista,Lista):-!.
combina([X|Lista1],Lista2,[X|Lista3]):-
	combina(Lista1,Lista2,Lista3).
