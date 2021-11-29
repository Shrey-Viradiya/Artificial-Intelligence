%is present in list
list_member(X,[X|_]):-!.
list_member(X,[_|T]):-list_member(X,T).

%find length
list_length([],0):-!.
list_length([_|T],N):-list_length(T,N1), N is N1+1.

%concatenate two lists
list_concat([],L,L):-!.
list_concat([X1|L1],L2,[X1|L3]):-list_concat(L1,L2,L3).

%delete an element from list
list_delete(X,[X|L1],L1):-!.
list_delete(X,[Y|L2],[Y|L1]):-list_delete(X,L2,L1).

%insert at the begining
insert_start(X,T,[X|T]).

%insert at the end
insert_end(X,T,L):-list_concat(T,[X],L).

%incser at position
insert_at(X,1,L,[X|L]):-!.
insert_at(X,P,[Y|L],[Y|L1]):- P1 is P-1,insert_at(X,P1,L,L1).

