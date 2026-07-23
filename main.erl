-module(main).
-export([main/1]).
main(_) ->
    A = list_to_integer(string:trim(io:get_line(""))),
    B = list_to_integer(string:trim(io:get_line(""))),
    Sum = A + B,
    io:format("~w~n", [Sum]),
    ok.
