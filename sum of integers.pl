sum(0,0).
sum(N,sum):-
    N>0,
    N1 is N-1,
    sum(N1, sum1),
    sum is N+sum1.
