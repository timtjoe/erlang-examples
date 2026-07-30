-module(main).
-export([main/1]).

main(_) ->
    %% Read and trim input line
    Line = string:trim(io:get_line("")),
    Words = string:split(Line, " ", all),

    %% Build map of word => count
    Map = lists:foldl(
        fun(W, Acc) ->
            maps:update_with(W, fun(N) -> N + 1 end, 1, Acc)
        end,
        #{}, Words
    ),

    %% Sort alphabetically and print
    Pairs = lists:sort(maps:to_list(Map)),
    lists:foreach(
        fun({Word, Count}) ->
            io:format("~s: ~w~n", [Word, Count])
        end,
        Pairs
    ).
