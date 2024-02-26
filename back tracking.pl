% Define a simple directed graph
edge(a, b).
edge(b, c).
edge(b, d).
edge(c, e).
edge(d, e).

% Define a predicate to check if there is a path between two nodes
path(X, Y) :-
    edge(X, Y).
path(X, Y) :-
    edge(X, Z),
    path(Z, Y).

% Example query: Is there a path from 'a' to 'e'?
% This will backtrace through possible paths until it finds a solution
% or exhausts all possibilities.
% Example query: ?- path(a, e).
