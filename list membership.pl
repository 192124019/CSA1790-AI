is_member(Element, [Element|_]).
is_member(Element, [_|Tail]) :-
  is_member(Element, Tail).


run_is_member(Element, List) :-
  is_member(Element, List),
  write('yes').
run_is_member(Element, List) :-
  \+ is_member(Element, List),
  write('no').
