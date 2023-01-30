state(room1, on(table1, book1)).
state(room1, on(table1, book2)).
state(room1, clear(table1)).
state(room1, handempty).

% Define the goals
goal(room1, on(floor, book1)).
goal(room1, on(floor, book2)).

% Define the actions
% pick up a book
action(pickup(X, Y)) :-
  state(Z, on(X, Y)),
  state(Z, clear(X)),
  state(Z, handempty),
  retract(state(Z, on(X, Y))),
  retract(state(Z, clear(X))),
  assert(state(Z, handfull)),
  assert(state(Z, clear(X))).

% put down a book
action(putdown(X, Y)) :-
  state(Z, handfull),
  state(Z, clear(X)),
  retract(state(Z, handfull)),
  assert(state(Z, on(X, Y))),
  assert(state(Z, clear(X))).

% Implement the plan
plan(Z, G) :-
  goal(Z, G),
  state(Z, G).
plan(Z, G) :-
  goal(Z, G),
  action(A),
  plan(Z, A).