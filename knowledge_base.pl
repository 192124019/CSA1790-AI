knowledge_base(likes(john, mary)).
knowledge_base(likes(john, books)).
knowledge_base(likes(mary, books)).

% Define the conclusion
conclusion(X, Y) :- likes(X, Y).
conclusion(X, Y) :- likes(X, Z), likes(Z, Y).

% Implement backward chaining
backward_chaining(X, Y) :- conclusion(X, Y), knowledge_base(X, Y).
backward_chaining(X, Y) :- conclusion(X, Z), backward_chaining(Z, Y).