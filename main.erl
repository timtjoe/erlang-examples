-module(main).
-export([main/1, loop/1]).

loop(N) ->
    receive
        inc ->
            loop(N + 1);
        {get, From} ->
            From ! N,
            loop(N)
    end.

main(_) ->
    Pid = spawn(?MODULE, loop, [0]),
    %% send 5 inc messages
    Pid ! inc, Pid ! inc, Pid ! inc, Pid ! inc, Pid ! inc,
    %% ask for value
    Pid ! {get, self()},
    %% receive reply
    receive
        Value ->
            io:format("~w~n", [Value])
    end.
