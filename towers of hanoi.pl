% Define the predicate to solve the Towers of Hanoi problem.
hanoi(1, Source, Target, _, [move(1, Source, Target)]).
hanoi(N, Source, Target, Auxiliary, Moves) :-
    N > 1,
    N1 is N - 1,
    hanoi(N1, Source, Auxiliary, Target, FirstMoves),
    move(N, Source, Target, MoveN),
    hanoi(N1, Auxiliary, Target, Source, LastMoves),
    append(FirstMoves, [MoveN|LastMoves], Moves).

% Define the predicate to move a single disc.
move(Disc, Source, Target, move(Disc, Source, Target)).
output for prolog code:
?- hanoi(3, 'A', 'C', 'B', Moves).
