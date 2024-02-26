planet(mercury).
planet(venus).
planet(earth).
planet(mars).
planet(jupiter).
planet(saturn).
planet(uranus).
planet(neptune).
size(mercury, small).
size(venus, small).
size(earth, small).
size(mars, small).
size(jupiter, large).
size(saturn, large).
size(uranus, large).
size(neptune, large).
distance(mercury, sun, 0.39).
distance(venus, sun, 0.72).
distance(earth, sun, 1.00).
distance(mars, sun, 1.52).
distance(jupiter, sun, 5.20).
distance(saturn, sun, 9.58).
distance(uranus, sun, 19.22).
distance(neptune, sun, 30.05).
small_planet(X) :- size(X, small).
large_planet(X) :- size(X, large).
output for prolog code:
?- small_planet(X).
X = mercury
?- large_planet(X)
X = jupiter.
?- distance(earth, sun, Distance).
Distance = 1.0.

