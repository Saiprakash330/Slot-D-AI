% Define parent-child relationships.
parent(john, mike).
parent(john, lisa).
parent(mary, mike).
parent(mary, lisa).
parent(lisa, jacob).
parent(lisa, emma).
parent(david, jacob).
parent(david, emma).

% Define gender.
male(john).
male(mike).
male(jacob).
male(david).
female(mary).
female(lisa).
female(emma).

% Define rules for relationships.
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).

% Define grandparent relationship.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
output for prolgcode:
?- father(john, Child).
