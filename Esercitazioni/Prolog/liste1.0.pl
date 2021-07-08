membro(A, [A|B]). %passo base
membro(A, [H|C]):- membro(A, C).
lung([], 0). %passo base del predicato lung
%passo ricorsivo
lung([H|C],N):- %la lunghezza della lista H|C è pari a N se
    lung(C, M), %la lunghezza della coda C è parmi a M e
    plus(M,1,N). %M+1=N
appendi([], L, L).
%appendi alla lista di partenza [T|C] 
%la lista L 
%al fine di ottenere la lista risultante [T|CN]
appendi([T|C], L,[T|CN]):-
    appendi(C, L, CN).