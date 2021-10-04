valorMax(X,Y,Z):-
	X>Y,
	Z is X.
valorMax(X,Y,Z):-
	X=<Y,
	Z is Y.

