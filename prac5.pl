:- discontiguous male/1, female/1, parent/2.
male(harivansh).
male(amitabh).
male(abhishek).
female(teji).
female(jaya).
female(aishwariya).
female(aradhya).
male(aram).
male(animesh).

parent(abhishek, aram).
parent(aishwariya, aram).
parent(abhishek, animesh).
parent(aishwariya, animesh).
parent(abhishek, aradhya).
parent(aishwariya, aradhya).
parent(amitabh, abhishek).
parent(jaya, abhishek).
parent(harivansh, amitabh).
parent(teji, amitabh).

father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).
son(X,Y) :- male(X),parent(Y,X).
daughter(X,Y) :- female(X),parent(Y,X).
grandfather(X,Y) :- male(X),parent(X,Somebody),parent(Somebody,Y).
grandmother(X,Y) :- female(X),parent(X,Somebody),parent(Somebody,Y).
aunt(X,Y) :- female(X),sister(X,Mom),mother(Mom,Y).
aunt(X,Y) :- female(X),sister(X,Dad),father(Dad,Y).
sister(X,Y) :- female(X),parent(Par,X),parent(Par,Y), X \= Y.
uncle(X,Y) :- brother(X,Par),parent(Par,Y).
cousin(X,Y) :- uncle(Unc , X),father(Unc,Y).
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Somebody),ancestor(Somebody,Y).
brother(X,Y) :-  male(X),parent(Somebody,X),parent(Somebody,Y), X \= Y.