# taxonomic-hierarchies-intro

The Prolog-style database contains facts and rules representing:
Creatures come in two types: humans and birds.
One type of human is a man.
One type of bird is a turkey.
Louis is a man.
Albert is a man.
Frank is a turkey.
Louis is a man, Louis is a human, and Louis is a creature.
Albert is a man, Albert is a human, and Albert is a creature.
Frank is a turkey, Frank is a bird, and Frank is a creature.

P.S.
For relationships “isa” and “ako”, use rel(X, isa, Y). and rel(X, ako, Y). 
For properties “fly” and “legs”, use rel(X, fly, Val). and rel(X, legs, Val).
