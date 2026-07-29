-module(main).
-export([main/1]).

main(_) ->
    Line = string:trim(io:get_line("")),
    Words = string:tokens(Line, " "),
    Counts = lists:foldl(fun(W, M) -> maps:update_with(W, fun(N) -> N + 1 end, 1, M) end, #{}, Words),
    Sorted = lists:sort(maps:to_list(Counts)),
    lists:foreach(fun({W, C}) -> io:format("~s: ~p~n", [W, C]) end, Sorted).
