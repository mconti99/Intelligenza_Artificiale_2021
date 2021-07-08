%calcolo simbolico
d(sen(X), cos(X), X).
d(cos(X), -sen(X), X).
d(X, 1, X).

d(Z, 0, _X):-
    number(Z).

d(F+G, H+I, X):-
    d(F, H, X),
    d(G, I, X).
d(F-G, H-I, X):-
    d(F, H, X),
    d(G, I, X).

d(compose(F, G), product(compose(H, G), I), X):-
    d(F,H, X),
    d(G,I, X).