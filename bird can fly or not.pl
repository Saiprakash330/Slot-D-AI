can_fly(sparrow).
can_fly(eagle).
can_fly(penguin).
cannot_fly(ostrich).
can_bird_fly(Bird) :- can_fly(Bird).
can_bird_fly(Bird) :- \+ cannot_fly(Bird).
