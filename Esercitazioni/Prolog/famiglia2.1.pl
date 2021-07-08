madre(anna, ciro). %madre 1 posto, figlio secondo
madre(anna, gennaro).
madre(anna, antonio).
madre(rosaria, anna).
madre(loredana, rosaria).
padre(giuseppe, ciro). %padre 1 posto, figlio secondo
padre(eduardo, giuseppe).
padre(giuseppe, gennaro).
padre(michele, antonio).
uomo(ciro).
uomo(gennaro).
uomo(giuseppe).
uomo(michele).
donna(anna).

figlio(X, Y):- %figlio X, madre Y
    madre(Y, X).

fratello(X, Y):- 
    madre(Z, Y), 
    madre(Z, X),
	padre(C, X),
    X\=Y,
    padre(C, Y).

fratellastro(X, Y):-
    madre(Z, X),
    madre(Z, Y),
    padre(C, X)\=padre(C, Y).

genitore(X, Y):-
    madre(X, Y).
genitore(X, Y):-
    padre(X, Y).

is_mother(X, Y):-
    genitore(X,Y),
    donna(X).
is_father(X, Y):-
    genitore(X, Y),
    uomo(X).
antenato(X, Y):-
    padre(X, Y).

antenato(X, Y):-
    padre(X, Z),
    antenato(Z, Y).
antenata(X, Y):-
    madre(X, Y).
antenata(X, Y):-
    madre(X, Z),
    antenata(Z, Y).
