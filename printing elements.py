print_list([]):-nl. %nl = newline
print_list([H|T]):-write(H),write(' '),print_list(T).
