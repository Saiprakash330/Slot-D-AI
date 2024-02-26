initial_state(state(at_center, on_floor, at_center, has_not)).
final_state(state(_, _, _, has)).
move(state(at_center, on_floor, at_center, has_not), grab, state(at_center, on_flor, at_center, has)).
move(state(M, on_floor, M, H), climb, state(M, on_floor, M, H)).

% Action: push chair from the center to the other side
move(state(at_center, on_floor, at_center, has_not), push, state(at_center, on_floor, at_center, has_not)).

% Action: walk from one side to the other side
move(state(at_center, on_floor, X, H), walk(X, Y), state(Y, on_floor, Y, H)).

% Define the rule for performing multiple moves to reach the final state
canget(state(_, _, _, has), []).
canget(State1, [Move | Moves]) :-
    move(State1, Move, State2),
    canget(State2, Moves).

% Define the predicate to find a sequence of moves to solve the problem
solve :- 
    initial_state(InitialState),
    final_state(FinalState),
    canget(InitialState, Moves),
    write('Solution Path: '), nl,
    print_moves(Moves).

% Define a helper predicate to print the 
