edge(louis, isa, man).
edge(albert, isa, man).
edge(man, ako, human).
edge(human, ako, creature).
edge(frank, isa, turkey).
edge(turkey, ako, bird).
edge(bird, ako, creature).

% (3) new facts
property(louis, legs, 1).
property(human, legs, 2).
property(turkey, fly, no).
property(bird, fly, yes).

rel(X, ako, Y):- edge(X, ako, Y).
rel(X, ako, Y):- edge(X, ako, Z), rel(Z, ako, Y).

rel(Who, isa, Set):- edge(Who, isa, Set).
rel(Who, isa, Set):- edge(Who, isa, Y), rel(Y, ako, Set).

% (4) property rules
rel(X, legs, Val):- property(X, legs, Val), !.
rel(X, legs, Val):- rel(X, isa, Y), property(Y, legs, Val), !.
rel(X, legs, Val):- rel(X, ako, Y), property(Y, legs, Val).

rel(X, fly, Val):- property(X, fly, Val), !.
rel(X, fly, Val):- rel(X, isa, Y), property(Y, fly, Val), !.
rel(X, fly, Val):- rel(X, ako, Y), property(Y, fly, Val).
    
