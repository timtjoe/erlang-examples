-module(main).
-export([main/1, factorial/1]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

main(_) -> 
  io:format("~w~n", [factorial(5)])