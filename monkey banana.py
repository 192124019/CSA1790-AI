room(state(at_door, on_floor, has_not)).
move(climb_box, state(at_door, on_floor, has_not), state(at_box, on_box, has_not)).
move(grasp_banana, state(at_box, on_box, has_not), state(at_box, on_box, has)).
move(climb_down, state(at_box, on_box, has), state(at_door, on_floor, has)).
solve_problem(state(_, _, has), []).
solve_problem(State, [Move|Moves]) :-
    move(Move, State, NextState),
    solve_problem(NextState, Moves).
