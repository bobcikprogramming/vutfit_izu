ziskejPrvek([H|_], R) :-  H = R.

jePosledni([]).

absolutniHodnota(X, Y) :- X < 0, Y is -X.
absolutniHodnota(X, X) :- X >= 0, !.

uloha8([_|M], _) :- jePosledni(M).
uloha8([H|T], O) :- ziskejPrvek([H|T], P), ziskejPrvek(T, R), P - R = M, absolutniHodnota(M, V), V =< O, uloha8(T, O), !.
