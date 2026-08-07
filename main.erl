-module(main).
-export([main/1]).

main(_) -> 
    io:format("node: ~p~n", [node()]),
    io:format("alive: ~p~n", [is_alive()]),
    io:format("connected: ~p~n", [length(nodes())]),
    ok.