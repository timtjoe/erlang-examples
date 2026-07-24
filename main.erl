-module(main).
-export([main/1, divide/2]).

divide(_A, 0) -> {error, division_by_zero};
divide(A, B) -> {ok, A div B}.

main(_) ->
    A = list_to_integer(string:trim(io:get_line(""))),
    B = list_to_integer(string:trim(io:get_line(""))),
    case divide(A, B) of 
        {ok, R} -> 
            io:format("result: ~w~n", [R]);
        {error, division_by_zero} ->
            io:format("error: division_by_zero~n", [])
    end,
    ok.
