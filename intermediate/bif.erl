-module(bif).
-export([main/1]).

main(_) ->
  length([1,2,3]),              %% 3
  hd([1,2,3]),                  %% 1 - head
  tl([1,2,3]),                  %% [2,3] - tail
  element(2, {a, b, c}),        %% b - 1-indexed!
  setelement(2, {a, b, c}, x),  %% {a, x c}
  tuple_size({a, b, c}),        %% 3
  is_atom(foo),                 %% true 
  is_list([1,2]),               %% true
  is_integer(42),               %% true
  self(),                       %% your PID
  spawn(Fun),                   %% start a process

  % Conversion BIFs
  integer_to_list(42),          %% "42"
  list_to_integer("42"),        %% 42
  atom_to_list(hello),          %% "hello"
  list_to_atom("hello"),        %% hello (CAREFUL - atoms aren't GC'd)
  binary_to_list(<<"hello">>),  %% "hello"
  list_to_binary("hello"),      %% <<"hello">>
  float_to_list(3.14),          %% "3.14000000000000012434e+00"
  float_to_list(3.14, [{decimals, 2}]). %% "3.14"

  % The list
