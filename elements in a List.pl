print_list([]).
print_list([H|T]) :-
  write(H), nl,
  print_list(T).

run_print_list(List) :-
  print_list(List).