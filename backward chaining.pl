% Facts and rules for a simple knowledge base

% Some animals are mammals
mammal(dog).
mammal(cat).

% Some mammals are carnivores
carnivore(X) :- mammal(X), hasClaws(X), hasSharpTeeth(X).

% Define some characteristics of animals
hasClaws(cat).
hasSharpTeeth(dog).

% Define a rule for a person to be afraid of an animal
afraidOf(X, Y) :- carnivore(Y), livesInJungle(Y), \+pet(Y), \+tamed(Y).

% Example query: Is John afraid of any animal?
% This will trigger back chaining to find an animal John is afraid of.
% Example query: ?- afraidOf(john, Animal).
