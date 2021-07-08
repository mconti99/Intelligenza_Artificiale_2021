% Some simple test Prolog programs
% --------------------------------

% Knowledge bases

loves(vincent, mia). %PREDICATO LOVE CON DUE ARGOMENTI
loves(marcellus, mia). %il primo argomento è chi ama
loves(pumpkin, honey_bunny). %secondo argomento è l'oggetto dell'amore
loves(honey_bunny, pumpkin).

jealous(X, Y) :- %Regola: gelosia tra X e Y SE 
    loves(X, Z), % X ama Z
    loves(Y, Z), % Y ama Z
	X\=Y.

/** <examples>

?- loves(X, mia).
?- jealous(X, Y).

*/

