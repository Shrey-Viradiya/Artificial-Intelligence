reverse([],Z,Z).
reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).

indexOf([Element|_], Element, 0).
indexOf([_|Tail], Element, Index):- indexOf(Tail, Element, Index1), Index is Index1+1.

indexOfend(List, Element, Index):- reverse(List, List2, []), indexOf(List2, Element, Index).