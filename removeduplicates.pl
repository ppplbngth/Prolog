member(X, [X|_]).
member(X, [_|Ys]):- member(X, Ys).

appendEl([], [], [X]).
appendEl(X, [H|T], [H|Y]):- appendEl(X, T, Y).


remove_duplicates([], []).
remove_duplicates([H|T], [H|X]):-
not(member(H, T)),
remove_duplicates(T, X).
remove_duplicates([H|T], X):-
member(H, T),
remove_duplicates(T, X).
