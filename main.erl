-module(main).
-export([main/1]).

validate_age(S) ->
    %% case string:to_integer(S) of ... end
    case string:to_integer(S) of
        {error, _} -> {error, not_a_number};
        {Int, _Rest} when Int < 0 -> {error, negative};
        {Int, _Rest} -> {ok, Int}
    end.
main(_) ->
    Line = string:trim(io:get_line("")),
    case validate_age(Line) of
        {ok, N} -> io:format("age: ~w~n", [N]);
        {error, not_a_number} -> io:format("error: not_a_number~n");
        {error, negative} -> io:format("error: negative~n")
    end.
